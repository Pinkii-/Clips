echo ";---------- Aqui empiezan las clases generadas por el protege ----------;" > Projecto/generado.clp
echo "" >> Projecto/generado.clp

cat test.pont >> Projecto/generado.clp

echo "" >> Projecto/generado.clp
echo ";-------- Aqui empiezan las instancias generadas por el protege --------;" >> Projecto/generado.clp

echo "(definstances instances" >> Projecto/generado.clp
cp test.pins testMAIN.pins
sed -i 's/\[/\[MAIN::/g' testMAIN.pins
cat test.pins >> Projecto/generado.clp
echo ")" >> Projecto/generado.clp

echo "" >> Projecto/generado.clp
echo ";------------------ Aqui empieza el sistema experto --------------------;" >> Projecto/generado.clp
echo "" >> Projecto/generado.clp

cd Projecto

cat codigo.clp >> generado.clp

clips -l generado.clp
