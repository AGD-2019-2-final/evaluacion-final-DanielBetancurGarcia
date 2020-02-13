import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    ##
    ## itera sobre cada linea de codigo recibida
    ## a traves del flujo de entrada
    ##
    for line in sys.stdin: 
        line = line.strip()
        splits = line.split("   ")
        #splits1 = int(splits[2])
        visualizacion = splits[0] + '\t' + splits[2] +'\t1'
        #val = int(val)
        sys.stdout.write(visualizacion + '\n')
