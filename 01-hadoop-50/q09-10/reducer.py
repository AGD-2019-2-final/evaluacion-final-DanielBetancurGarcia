import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':

    conteo = 0
    for line in sys.stdin:
        line = line.strip()
        val, key, fec = line.split("\t")
        val = int(val)
        conteo = conteo + 1
        if conteo == 7:
            break
        sys.stdout.write("{}\t{}\t{}\n".format(key,fec,val))