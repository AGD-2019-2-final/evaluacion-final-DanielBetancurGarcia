#!/usr/bin/env python
import sys
if __name__ == '__main__':
    for line in sys.stdin:
        line = line.strip()
        key, val,fec = line.split("\t")
        #key = int(key)
        val = int(val)
        sys.stdout.write("{}\t{}\t{}\n".format(key,fec,val)) 
