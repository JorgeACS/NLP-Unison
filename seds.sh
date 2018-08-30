sed -E -n -f cambios.sed pokemon.txt > new-pokemon.json
sed -E -i -f cambios2.sed new-pokemon.json
sed -E -i -f cambios3.sed new-pokemon.json
echo "}]" >> new-pokemon.json
