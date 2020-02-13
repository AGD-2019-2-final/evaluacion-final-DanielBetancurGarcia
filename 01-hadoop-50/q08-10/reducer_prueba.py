#!/usr/bin/env python

import sys

##
## Esta funcion reduce los elementos que
## tienen la misma clave
##

if __name__ == '__main__':

    curkey = None
    total = 0
    conteo = 1

    ##
    ## cada linea de texto recibida es una
    ## entrada clave \tabulador valor
    ##
    for line in sys.stdin:

        key, val, con = line.split("\t")
        val = int(val)
        con = float(con)

        if key == curkey:
            ## No se ha cambiado de clave. Aca se
            ## acumulan los valores para la misma clave.
            total += val
            conteo += con
            #prom = total/conteo
        else:
            ##
            ## Se cambio de clave. Se reinicia el
            ## acumulador.
            ##
            if curkey is not None:
                ##
                ## una vez se han reducido todos los elementos
                ## con la misma clave se imprime el resultado en
                ## el flujo de salida
                ##
                sys.stdout.write("{}\t{}.0\t{}\n".format(curkey, total, total/conteo))

            curkey = key
            total = val
            conteo = con
            #prom = total/conteo
    
    sys.stdout.write("{}\t{}.0\t{}\n".format(curkey, total, total/conteo))
