a=$1
b=$3

    if [ $2 = '+' ]
    then
        echo $(($a+$b))
    elif [ "$2" = '-' ]
    then
         echo $(($a-$b))
    elif [ $2 = 'x' ]
    then
         echo $(($a*$b))
    elif [ "$2" = '/' ]
    then
        echo $(($a/$b))        
fi
