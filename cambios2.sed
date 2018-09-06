#Quitar HTML innecesario
s/(.*)(<img.*\/>)(.*)/ /g
#Quitar espacios
/^[[:space:]]*$/d
#Quitar HTML, agregar "T1" para representar primer tipo
s/<td colspan.*>(.*)<\/span.*/"T1":"\1",/g
#Quitar HTML, agregar "T2" para representar segundo tipo
s/<td style="background.*>(.*)<\/span.*/"T2":"\1",/g
#Quitar HTML innecesario
/<\/td>$/d
#Quitar HTML, agregar cierre y apertura de llaves para cada Pokemon
s/<td> <a.*>(.*)<\/.*/},{"N":"\1",/g
#Quitar HTML innecesario
/<.*/d
#Quitar llave extra en el primer Pokemon 'Bulbasaur', ya que no tiene un pokemon precedente
s/\},\{(.*Bulbasaur.*)/\[\{\1/
#Quitar comas en T2, ya que nunca tienen un valor extra despues
s/("T2":.*),/\1/g
