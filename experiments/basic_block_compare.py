import re
import argparse

import angr

basic_blocks = set()
functions = []
visited = set()

hit_re = re.compile(r"Trace 0: 0x\w+ \[\w+/(\w+)/\w+/\w+\]")

depth_dict = {}
deepest = 0


def get_hit_blocks(trace_file):
    hit_blocks = set()
    with open(trace_file) as f:
        # lines = f.read().splitlines()
        for line in f:
            m = hit_re.match(line)
            if m:
                addr = int(m.group(1), 16)
                hit_blocks.add(addr)

    return hit_blocks


def get_basic_blocks(function_addr, depth=0):
    global deepest
    if function_addr in visited:
        return set()
    visited.add(function_addr)
    if depth not in depth_dict:
        depth_dict[depth] = set()
    if depth > deepest:
        deepest = depth
    depth_dict[depth].add(function_addr)
    # count the basic blocks
    rtn = set()
    print("Checking %s" % hex(function_addr))
    for x in proj.kb.functions[function_addr].get_call_sites():
        target = proj.kb.functions[function_addr].get_call_target(x)
        for bb in cfg.functions[target].blocks:
            rtn.add(bb)
        rtn |= get_basic_blocks(target, depth + 1)
    return rtn

parser = argparse.ArgumentParser()
parser.add_argument('-p', '--proj')
parser.add_argument('-l', '--log')

args = parser.parse_args()

proj = angr.Project(args.proj, load_options={'main_opts': {'base_addr': 0}})
cfg = proj.analyses.CFG()
for addr, x in cfg.functions.items():
    # Find the main loop
    if x.name == 'loop':
        basic_blocks = get_basic_blocks(addr)

hit_blocks = get_hit_blocks(args.log)

hit_block = set()
missed_block = set()
for bb in basic_blocks:
    for hit in hit_blocks:
        if bb.addr - 1 <= hit <= bb.addr + bb.size:
            print("Match:", bb)
            hit_block.add(bb.addr)
            break
    if bb.addr not in hit_block:
        print("Missed:", bb)
        missed_block.add(bb.addr)

hit_fn = set()
for fn in visited:
    print(fn, proj.kb.functions[fn].size)
    for hit in hit_blocks:
        if fn - 1 <= hit <= fn + proj.kb.functions[fn].size:
            print("Function hit!")
            hit_fn.add(hit)
            break
miss_fn = visited - hit_fn

# print(hit_blocks)
# print(basic_blocks)
# print(len(basic_blocks))
print("total bb", len(basic_blocks))
print("matched bb", len(hit_block))
print("missed bb", len(missed_block))
print("total fn", len(visited))
print("matched fn", len(hit_fn), hit_fn)
print("missed fn", len(miss_fn))
for d in depth_dict:
    print("depth ", d, len(depth_dict[d]))
print(depth_dict)
print("deepest", deepest)
