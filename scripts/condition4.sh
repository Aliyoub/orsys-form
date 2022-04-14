#contenu=$(ls $1)
read -p "entrez le chemin du rep" rep
read -p "entrez le chemin du fichier"  fic

if test -d  $rep
   then
      contenu=$(ls $rep)
      for i in $contenu
      do
	if test -f $rep/$i
      then
          diff $fic $rep/$i 
      fi
	  done
      
fi
