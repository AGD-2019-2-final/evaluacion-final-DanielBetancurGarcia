import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
import sys
if __name__ == "__main__":

    for line in sys.stdin: 
        line = line.strip()
        splits = line.split("   ")
        splits1 = int(splits[2])
        if len(splits[2])==1:
            splits[2] = '00' + splits[2]
        if len(splits[2])==2:
            splits[2] = '0' + splits[2]
        visualizacion = splits[2] + '\t' + splits[0] + '\t' + splits[1]
        sys.stdout.write(visualizacion + '\n')