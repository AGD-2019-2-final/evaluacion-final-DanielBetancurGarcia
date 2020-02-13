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
        splitfecha = splits[1].split("-")
        mes = splitfecha[1]
        sys.stdout.write(mes + '\t1' + '\n')