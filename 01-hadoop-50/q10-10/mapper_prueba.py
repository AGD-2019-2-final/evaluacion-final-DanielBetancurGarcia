#! /usr/bin/env python

##
## Esta es la funcion que mapea la entrada a parejas (clave, valor)
##
import sys
if __name__ == "__main__":

    for line in sys.stdin: 
        line = line.strip()
        splits = line.split("\t")
        numero = splits[0]
        letras = splits[1].split(",")
        for i in range(len(letras)):
            letra = letras[i]
            if len(numero)==1:
                numero = '0' + numero
            visualizacion = letra + '\t' + numero
            sys.stdout.write(visualizacion + '\n')
