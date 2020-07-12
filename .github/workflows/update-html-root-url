#!/usr/bin/python3

import fileinput
import re
import sys

NAME = sys.argv[1]
VERSION = sys.argv[2]

for line in fileinput.input(files=sys.argv[3:], inplace=True):
    sys.stdout.write(
        re.sub('html_root_url = "https://docs.rs/%s/[^"]+"' % NAME,
               'html_root_url = "https://docs.rs/%s/%s"' % (NAME, VERSION),
               line))
