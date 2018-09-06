#Este .sed se corre con el comando -n, lo cual lo hace silencioso. 
# De esta forma, lo unico que logea es lo que encuentra en la regex.
# Asi, podemos ignorar todo lo que este en el archivo original,
# Excepto por lo que queramos encontrar en la regex.
# 
# En este caso, nos quedamos solo con los <td>, ya que son los que contienen
# A los pokemon, y nos limpia una gran parte del texto
/.*(<td.*>|<\/td.*>){1}.*/p
