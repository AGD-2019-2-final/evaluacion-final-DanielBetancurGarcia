#!/usr/bin/env python
import sys
if __name__ == '__main__':
    for line in sys.stdin:
        line = line.strip()
        key, val = line.split("\t")
        key = int(key)
        sys.stdout.write("{},{}\n".format(val,key)) 
