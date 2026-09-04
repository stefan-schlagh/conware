import os, re, argparse

# allow overriding the input folder 
parser = argparse.ArgumentParser()
parser.add_argument("-f", "--folder", help="input folder (overrides default)")
args = parser.parse_args()

folder = "/mnt/nas1/uni/BA/conware/experiments/lock_loop_lmkeller_2/emulate_logs"

if args.folder:
    folder = args.folder

# only compare missing_recorded, missing_emulated - csv always only has 1 data line
compare_fields = 1,3

regex = re.compile('summary\_(\w+\_)*(\d+)\.csv')

# key - list of all occurences
results = {}

def generate_key(run):
    if run["optimized"]:
        return f"{run['number']}_O"
    return f"{run["number"]}"

for root, dirs, files in os.walk(folder):
  for file in files:
    match = regex.match(file)
    if match:
        prefix, digit = match.groups()

        optimized = prefix is None or "linear" not in prefix

        run = {"number": int(digit), "optimized": optimized}

        with open(os.path.join(folder, file)) as f:
            fields = f.read().split("\n")[1].split(",")
            missing_recorded, missing_emulated = int(fields[1]), int(fields[3])
            key = f"{missing_recorded} {missing_emulated}"

            if(key in results):
               results[key].append(run)
            else:
               results[key] = [run]

# now we have key as missing_recorded missing_emulated and value is the different runs with that outcome
#for k,v in results.items():
#   print(f"{k}: {len(v)} run(s)")
#   print(v)

comp_classes = []

# then read comp.txt
with open(os.path.join(folder, "comp.txt")) as comp:
    content = comp.read()
    class_header_re = re.compile(
        r"^Class (\w+): \d+ run\(s\), \d+/\d+ matched \(([\d.]+)% coverage\)"
    )
    run_line_re = re.compile(r"run_(\d+)\s*$")

    current = None
    for line in content.splitlines():
        line = line.rstrip()
        if not line:
            continue

        header_match = class_header_re.match(line)
        if header_match:
            letter, coverage = header_match.groups()
            current = {
                "letter": letter,
                "coverage": float(coverage),
                "runs": [],
            }
            comp_classes.append(current)
            continue

        if current is not None and line.strip().startswith("-"):
            path = line.strip().lstrip("-").strip()
            run_match = run_line_re.search(path)
            if run_match:
                number = int(run_match.group(1))
                optimized = "optimized" in path
                current["runs"].append({
                    "number": number,
                    "optimized": optimized,
                })

# build lookup run -> class
class_lookup = {}

for c in comp_classes:
    for r in c["runs"]:
        class_lookup[generate_key(r)] = c['letter']

# now look what is the class distribution for each outcome
for k,v in results.items():
    # store letter: number of instances
    class_number = {}

    for run in v:
        letter = class_lookup[generate_key(run)]
        if(letter in class_number):
            class_number[letter] += 1
        else:
            class_number[letter] = 1

    print(f"{k}: {len(v)} run(s)")
    print(class_number)

# for me there is the case that missing_recorded is the same everywhere. check that for both missing_recorded and missing_emulated
# if not the same everywhere, do a scatter plot showing correlation (or none thereof) of missing_emulated and coverage (%)

# results keys look like "missing_recorded missing_emulated"
recorded_values = set()
emulated_values = set()

for k in results.keys():
    rec_str, emu_str = k.split()
    recorded_values.add(int(rec_str))
    emulated_values.add(int(emu_str))

recorded_constant = len(recorded_values) == 1
emulated_constant = len(emulated_values) == 1

print("\n--- missing_recorded / missing_emulated consistency check ---")
if recorded_constant:
    print(f"missing_recorded is the same everywhere: {next(iter(recorded_values))}")
else:
    print(f"missing_recorded VARIES: {sorted(recorded_values)}")

if emulated_constant:
    print(f"missing_emulated is the same everywhere: {next(iter(emulated_values))}")
else:
    print(f"missing_emulated VARIES: {sorted(emulated_values)}")

# if missing_emulated is not constant, plot it against coverage (%)
if not emulated_constant:
    import matplotlib.pyplot as plt
    import numpy as np

    letter_to_coverage = {c["letter"]: c["coverage"] for c in comp_classes}

    xs = []  # missing_emulated
    ys = []  # coverage (%)

    for k, v in results.items():
        _, emu_str = k.split()
        missing_emulated = int(emu_str)

        for run in v:
            letter = class_lookup.get(generate_key(run))
            if letter is None:
                continue
            coverage = letter_to_coverage.get(letter)
            if coverage is None:
                continue
            xs.append(missing_emulated)
            ys.append(coverage)

    xs_arr = np.array(xs)
    ys_arr = np.array(ys)

    # Pearson correlation coefficient
    r = np.corrcoef(xs_arr, ys_arr)[0, 1]

    # linear regression fit (least squares)
    slope, intercept = np.polyfit(xs_arr, ys_arr, 1)
    line_x = np.linspace(xs_arr.min(), xs_arr.max(), 100)
    line_y = slope * line_x + intercept

    plt.figure()
    plt.scatter(xs, ys, label="runs")
    plt.plot(line_x, line_y, color="red", label=f"fit (r = {r:.2f})")
    plt.xlabel("missing_emulated")
    plt.ylabel("coverage (%)")
    plt.title(f"missing_emulated vs. coverage (Pearson r = {r:.2f})")
    plt.legend()
    plt.tight_layout()
    plt.savefig("missing_emulated_vs_coverage.pdf", bbox_inches="tight")
    plt.show()

# ============================================================================
# 6-number breakdown: missing_emulated bucket x coverage bucket
# ============================================================================

def emulated_bucket(val):
    if val < 80:
        return "< 80"
    elif val <= 160:
        return ">= 80 and <= 160"
    else:
        return "> 160"

def coverage_bucket(val):
    return "< 20" if val < 20 else "> 20"

counts = {}
for me_bucket in ["< 80", ">= 80 and <= 160", "> 160"]:
    for cov_bucket in ["< 20", "> 20"]:
        counts[(me_bucket, cov_bucket)] = 0

for k, v in results.items():
    _, emu_str = k.split()
    missing_emulated = int(emu_str)
    me_bucket = emulated_bucket(missing_emulated)

    for run in v:
        letter = class_lookup.get(generate_key(run))
        if letter is None:
            continue
        coverage = letter_to_coverage.get(letter)
        if coverage is None:
            continue
        cov_bucket = coverage_bucket(coverage)
        counts[(me_bucket, cov_bucket)] += 1

print("\n--- missing_emulated x coverage breakdown ---")
header = f"{'missing_emulated':<20} | {'coverage < 20':>15} | {'coverage > 20':>15}"
print(header)
print("-" * len(header))
for me_bucket in ["< 80", ">= 80 and <= 160", "> 160"]:
    row = f"{me_bucket:<20} | {counts[(me_bucket, '< 20')]:>15} | {counts[(me_bucket, '> 20')]:>15}"
    print(row)

# ---- LaTeX table output ----------------------------------------------------
latex_lines = []
latex_lines.append(r"\begin{table}[h]")
latex_lines.append(r"    \centering")
latex_lines.append(r"    \begin{tabular}{lrr}")
latex_lines.append(r"        \toprule")
latex_lines.append(r"        missing\_emulated & coverage $< 20\%$ & coverage $> 20\%$ \\")
latex_lines.append(r"        \midrule")

bucket_labels_latex = {
    "< 80": r"$< 80$",
    ">= 80 and <= 160": r"$80 \leq x \leq 160$",
    "> 160": r"$> 160$",
}

for me_bucket in ["< 80", ">= 80 and <= 160", "> 160"]:
    label = bucket_labels_latex[me_bucket]
    c_lt = counts[(me_bucket, "< 20")]
    c_gt = counts[(me_bucket, "> 20")]
    latex_lines.append(f"        {label} & {c_lt} & {c_gt} \\\\")

latex_lines.append(r"        \bottomrule")
latex_lines.append(r"    \end{tabular}")
latex_lines.append(r"    \caption{Distribution of runs by missing\_emulated and coverage.}")
latex_lines.append(r"    \label{tab:missing-emulated-coverage}")
latex_lines.append(r"\end{table}")

latex_table = "\n".join(latex_lines)

print("\n--- LaTeX table ---")
print(latex_table)

with open(os.path.join(folder, "missing_emulated_coverage_table.tex"), "w") as f:
    f.write(latex_table)

