##prog that read 5 random 2 digit ,find sum & avg

echo "give  the Total input you want :"
n=5
i=0
while [ $i -lt $n ]
do
 a[$i]=$((RANDOM%100)) 
 i=`expr $i + 1`
 done
 sum=0
 echo "Output :"
 for i in "${a[@]}"
 do 
 echo $i
  sum=`expr $sum + $i`
  echo "Addition of five number : " $sum
  done
  add=o
  echo "Addition of five number : " $sum
  avg=`expr $sum / $n`
  secho "Average of five number : " $avg