## 1 10 100 1000 100000 100000000 using case



echo "Enter a number from 1,10,100,1000,10000,100000,1000000,10000000,100000000: "
read n
case
 "$n" in
 1)
  echo "Unit"
  ;;
  10)
   echo
    "Ten"
    ;;
    100)
     echo "Hundred"
     ;;
     1000)
      echo "Thousand"
      ;;
      10000)
       echo "Ten Thousand"
       ;;
       100000)
        echo "Hundred Thousand"
        ;;
        1000000)
         echo "Million"
         ;;
         10000000)
          echo "Ten Million"
          ;;
          100000000)
           echo "Hundred Million"
           ;;
            *) 
            echo "Greter than hundred milion."
            ;;
            esac