###weekdays read


echo "Enter thenumber 1 to 7 : "
read n
case
 "$n" in
 1)
  echo 
  "Sunday"
  ;;
  2) 
  echo "Monday"
  ;;
  3)
  echo "Tuseday"
  ;;
  4)
   echo "Wednesday"
   ;;
   5) 
   echo "Thursday"
   ;;
   6) 
   echo "Friday"
   ;;
   7) 
   echo "Saturday"
   ;;
   *) 
   echo "invalid impiut try again."
   ;;
   esac