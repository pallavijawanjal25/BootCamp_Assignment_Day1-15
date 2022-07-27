 #################Add two random dice number and print the result
p=$((RANDOM%6))
 if [ $p -eq 0 ]
 then
  p=6 
 echo "Dice first value : " $p
 else
  echo "Dice first value : " $p
 fi
 b=$((RANDOM%6))
 if [ $b -eq 0 ]
 then
  b=6 
 echo "Dice second value : " $b
 else 
 echo "Dice second value : " $b
 fi
 echo " Addition of dice number" `expr $p + $b`