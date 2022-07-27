   ########Use random to get dice number betn 1 to 6
input=$((RANDOM%6))
if [ $input -eq 0 ]
then echo "6"
else 
echo $input
fi