### user input 
##1.feet to inch
###2.feet to meter 
##3.inch to feet 
##4.meeter to feet using CASE



echo "A. Feet to Inch"
echo "B. Feet to Meter"
echo "C. Inch to Feet"
echo "D. Meter to Feet"
read n
case
 "$n" in
 1)
  echo "give the value in feet : "
   read a
    inch=$(awk 'BEGIN {print '$a' * '12'}') 
    echo "$a feet= $inch inch"
    ;;
    2)
  echo "give the value in feet : "
  read a
   inch=$(awk 'BEGIN {print '$a' * '0.3048'}')
    echo "$a feet= $inch meter"
    ;;
    3) echo "give the value in Inch : " 
    read a 
    inch=$(awk 'BEGIN {print '$a' * '0.0833333'}')
     echo "$a inch= $inch feet"
     ;;
     4) 
     echo "give the value in Meter : " 
     read a 
     inch=$(awk 'BEGIN {print '$a' * '3.28084'}') 
     echo "$a meter= $inch feet"
     ;;
     *)
      echo "Invalid case."
      ;;
  esac

