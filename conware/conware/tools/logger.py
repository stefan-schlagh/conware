import csv
import logging

logger = logging.getLogger(__name__)


class PretenderLog:
    HEADER = ['Operation', 'Seqn', 'Address', 'Value', 'Value (Model)',
              'PC', 'Size', 'Timestamp', 'Model']

    def __init__(self):
        pass


class LogWriter(PretenderLog):
    """
    Write CSV logs in our standard format
    """

    def __init__(self, filename, buffer=True):
        # In Python 3, 'wb' should be 'w' for the csv module.
        # We also add newline='' to prevent double-line endings.
        if not buffer:
            # Unbuffered text I/O is not allowed in Python 3.
            # We use buffering=1 for line-buffering instead.
            self.csvfile = open(filename, 'w', buffering=1, newline='')
        else:
            self.csvfile = open(filename, 'w', newline='')
            
        self.writer = csv.writer(self.csvfile, delimiter='\t',
                                 quotechar='|', quoting=csv.QUOTE_MINIMAL)
        self.writer.writerow(self.HEADER)

    def write_row(self, row):
        """
        Write a list of values to our log file
        :param row:
        :return:
        """
        if len(row) != len(self.HEADER):
            logger.warning("The row written does not match our format: %s" %
                           repr(self.HEADER))
        self.writer.writerow(row)

    def close(self):
        # self.file.close()
        self.csvfile.close()


class LogReader(PretenderLog):
    """
        Read CSV logs in our standard format
    """

    def __init__(self, filename):
        self.csvfile = open(filename)
        self.reader = csv.reader(self.csvfile, delimiter='\t',
                                 quotechar='|', quoting=csv.QUOTE_MINIMAL)

    def __iter__(self):
        return self

    
    def __next__(self):
        return self.read_row()

    def close(self):
        # self.file.close()
        self.csvfile.close()

    def read_row(self):
        return next(self.reader)