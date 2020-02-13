#! /usr/bin/env python

##
## Esta es la funcion que mapea la entrada a parejas (clave, valor)
##
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
    cadena =''
    for line in sys.stdin: 

        ##
        ## genera las tuplas palabra \tabulador 1
        ## ya que es un conteo de palabras
        ubi = 0
        for word in list(line.split(',')):
            ubi +=1
            ## escribe al flujo estandar de salida
            ##
            if (ubi == 3):
                cadena ="{}\t1\n".format(word)
                ubi = 0
                break
        sys.stdout.write(cadena)
