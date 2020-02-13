#!/usr/bin/env python

import sys

##
## Esta funcion reduce los elementos que
## tienen la misma clave
##
if __name__ == '__main__':

    conteo = 0
    for line in sys.stdin:
        line = line.strip()
        val, key, fec = line.split("\t")
        val = int(val)
        conteo = conteo + 1
        if conteo == 6:
            break
        sys.stdout.write("{}\t{}\t{}\n".format(key,fec,val))
