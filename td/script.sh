mot=$0
fic=$2

if ! test -f $fic || test  $# -ne 2 
      then
      echo "erreur: arguments incorrects"
   else
     res=`grep -c $1 $2`
     if test $res -eq 0
       then 
         echo "erreur: motif introuvable"
          else 
          `grep -n $1 $2 > fic_res`
           echo "réussie: motif trouvé"
      fi
fi

