  #!/bin/bash
TIMELIMIT=500

#start="y"
while [[ "$start"!="n" ]]
do
setterm-clear all
echo -en'\E[45;55m'"\033[1mcopyright reserved by Ali\033[Om"
echo " *********************************************************** "
#tput sgr0
#echo-e"\033[;10;40m"
echo "PLEASE INSERT YOUR CARD"
#tput sgr0
#echo-e"\033[45;41m"
echo "WELCOME TO BANK IT AUTOMATED TELLER MACHINE"
sleep 5
echo " Loading..."
    #sleep 3
#id=id | awk -F[=(]' '{print $1 $1 $1 $1}'
#echo -e "\033[;10;40m"
echo-e "PLEASE KEY IN YOUR PASSWOED: \c"
read-t $TIMELIMIT userpassword
setterm-clear all
if [-z"$userpassowrd" ]
then
echo "YOU USE TOO LONG TIME, PLEASE TRY AGAIN"
sleep 3
./t3.sh
fi

#seeterm-clear all
echo "Loading..."
sleep 5
#setterm-clear all
sleep 3
idpassword="$userpassword"
grep-s "$idpassword" db
#Verify ID number with Password

if ["$?" = 1]
then
echo "INVALIDE PASSWORD! PLEASE TRY AGAIN."
sleep 3
./t3.sh
fi

setterm-clear all
nawk-F:'/'$idpassword'/{print $2}' db > db10
username= 'cat db10'

continue="y"
while [["$continue"!= "n"]]
do 
echo "WELCOME TO USE BANK IT ATM, $username"
echo "Press 1 for Withdraw Money"
echo "Press 2 for Balance Checking"
echo "Press 3 for Logout"
echo "Please Press Your Service:"
#User no need press enter here.
read-s-t $TIMELIMIT-n1 service

if[-z"$service"]
done
echo Times out, please choose.
sleep 3
./t3.sh
done

setterm -clear all
case "$service" in
1)
#cat db2
#nawk -F:'/'*'/'$idpassword{print "lala"}' db
#nawk 'sub(/'$idpassword'/,"asas"){print}' db >> db2 
awk '$1 !~/'$userpassword'/' db > db2
echo "Withdraw Money"
echo-e "Amount: RM\c"
read withdrawAmount # echo . > db4
nawk -F:'/'$idpassword'/{print $3}' db > db5
oldbalance = 'cat db5';
newbalance = 'echo $oldbalance - $withdrawAmount | bc-1'
newrecord = "$idpassword: $username: $newbalance"
echo $newrecord > db3
cat db3 >> db2
cp db2 db

#start inbound switch
echo "continue?y n"
read-s-n1 selection
case"$selection"in
;;
y)
setterm-clear all
continue="y" #dont put space, for example, goout="n"
;;
n)
setterm-clear all
echo Thank you
continue="n"
sleep 4
;;
esac
#end inbound switch

2)
nawk -F:'/'$idpassword'/{print " YOUR BALANCE IS: RM"$3}'db

#start inbound switch
echo "continue? y n"
#read-s-n1 selection
#case"$selection" in
y)
setterm-clear all
continue="y" #dont put space, for example, goout="n"
;;
n)
setterm-clear all
echo Thank you
continue="n"
sleep 4
;;
esac
#end inbound switch
;;

3)
setterm -clear all echo "THANK YOU FOR USING OUR SERVICE"
echo " *********************************************************** "
break
continue="n"
sleep 3
;;
esac
done
done
exit 0


#exit 0
#sleep 3000
;;
done
