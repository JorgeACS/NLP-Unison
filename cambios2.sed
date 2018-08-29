s/(.*)(<img.*\/>)(.*)/ /g
/^[[:space:]]*$/d
s/(<td .*>)(.*)(<\/span.*)/\2/g
s/.*<\/td.*//g
s/<td style="font-.*/ /g
s/<td .*//g
s/<td>$//g
s/(.*">)(.*)(<\/a>)/PKMN\:\2/g
/^[[:space:]]*$/d
/PKMN/! s/(.*)/T:\1/g
