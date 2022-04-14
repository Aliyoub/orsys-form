
if test $# -lt 2 
then echo "erreur nombre argument"
elif test $# -eq 2 && [ -f $1 ] && [ -f $2 ]
then diff $1  $2
else echo "erreur"
fi


