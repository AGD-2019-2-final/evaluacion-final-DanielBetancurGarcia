#! /usr/bin/env python

##
## Esta es la funcion que mapea la entrada a parejas (clave, valor)
##
import sys
if __name__ == "__main__":
    ##
    ## itera sobre cada linea de codigo recibida
    ## a traves del flujo de entrada
    ##
    for line in sys.stdin: 
        line = line.strip()
        #print(line)
        splits = line.split(",")
        #print(splits)
        visualizacion = splits[1] + '\t' + splits[0]
        sys.stdout.write(visualizacion + '\n')
