 
echo "Welcome To Flip Coin Simulation"

read -p "Enter how many times user want to flip coin" Number
echo "Number="$Number

function combination_flip_coin()
{
read -p " press * to start " start
while [ $start -eq 1 ]
do
echo "perform simulator operation to create a Singlet,Doublet and Triplet Combination"
echo -e "1.Singlet_of_coin \n2.Doublet_of_coin \n3.Triplet_of_coin"
read -p "Enter your choice" choice
case $choice in
1)
fCoin=1
FlipCoin
;;
2)
fCoin=2
FlipCoin
;;
3)
fCoin=3
FlipCoin
;;
*)
echo "please enter a valid number"
;;
esac
read -p "Do you want to continue again" start
done
}

#funct to Display head  or tail#
function  FlipCoin()
{
coinflip=""
declare -A Simulation
for (( i=0; i<3; i++ ))
	do
		flip=$((RANDOM%2));
		echo $flip;
		if [ $flip -eq 0 ]
		then
			tailCount=$((tailCount+1));
		else
			headCount=$((headCount+1));
		fi
	done
	echo "Tail Count : "$tailCount;
	echo "Head Count : "$headCount;

Simulation[$coinflip]=$((${Simulation[coinflip]}+1))
flipkey=""
done
echo  "value of flip coins : ${!Simulation[@]}"
echo "counting of flip coins : ${Simulation[@]}"

Calculation
}
function Calculation()
{
for coinflip in ${!Simulation[@]}
do
Simulation[$coinflip]=$( echo "scale=2; ${Simulation[$flipkey]} * 100 / $Number" | bc )
done
echo "value percentage of flip coins : ${!Simulation[@]}"
echo "percentage of flip coins : ${Simulation[@]}"
sort_FlipCoinDict
}
function sort_FlipCoinDict()
{
echo "Winner is:"
for i in "${!Simulation[@]}"
do
echo -e $i ${Simulation[$i]}
done | sort -k2 -rn | head -1s
}
combination_flip_coin
