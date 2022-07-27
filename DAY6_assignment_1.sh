#### prog that takes agument
 ## and print table of power of 2 that less than equal to 2^n.


n=$1
echo "The table of powers of two upto 2^$n:"
for (( i = 0; i <= n; i++ ))
do
    echo "2^$i = $((2**i))"
done
