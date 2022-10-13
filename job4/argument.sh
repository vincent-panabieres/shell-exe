cd
echo -e "quel est le nom de votre fichier ?"
read fichier
nano "$fichier".txt
#exit
echo -e "quel est le nom du fichier a copier?"
read copie
"$fichier".txt << "$copie"
