s/(.*)(<img.*\/>)(.*)/ /g
/^[[:space:]]*$/d
s/<td colspan.*>(.*)<\/span.*/"T1":"\1",/g
s/<td style="background.*>(.*)<\/span.*/"T2":"\1",/g
/<\/td>$/d
s/<td> <a.*>(.*)<\/.*/},{"N":"\1",/g
/<.*/d
s/\},\{(.*Bulbasaur.*)/\[\{\1/
s/("T2":.*),/\1/g
