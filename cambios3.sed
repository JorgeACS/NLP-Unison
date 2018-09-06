#Quitas las comas enseguida de los "T1" cuando el pokemon correspondiente solo tiene un tipo
N;s/("T1":"[a-zA-Z]+"),[\n|\r\n]}/\1\n\}/g
#Agrega tabs en las lineas de tipo, por cuestiones de formato (ponerlo wapo)
s/("T1"|"T2")/\t\1/g
#Agrega tabs en las lineas de nombre, por cuestiones de formato (ponerlo wapo)
s/("N")/\n\t"N"/g
#Cambia espacios en nombres de pokemon por '_' (para que entren como un solo nombre)
s/"N":"(.*?) (.*?)"/"N":"\1_\2"/g
