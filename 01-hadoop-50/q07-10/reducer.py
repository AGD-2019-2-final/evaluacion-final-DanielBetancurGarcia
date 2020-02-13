import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':
    for line in sys.stdin:
        line = line.strip()
        key, val,fec = line.split("\t")
        #key = int(key)
        val = int(val)
        sys.stdout.write("{}\t{}\t{}\n".format(key,fec,val))