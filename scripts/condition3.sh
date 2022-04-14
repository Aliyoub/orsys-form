#``
read -p "Que voulez-vous faire ?" X

while  test= $X !="fin "
do
case $X in
	"tete")
 	  read -p "entrez le chemin d'un fichier" fic 
	  if  test -f $fic
	  then  read -p "saisir le nombre de lignes" lig
	  head -$lig $fic 
	  fi;;
	
	"cherche")
	  read -p "entrez le chemin d'un fichier" fic2
	  if  test -f $fic2
          then  read -p "saisir le motif" motif
          grep $motif $fic2
	  fi;;
	
	*)
	  echo "Erreur";;
esac
# Mise a jour de la variable X
read -p "desirez-vous autre chose ?" X
done

