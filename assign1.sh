
#!/bin/bash
echo hello world
echo -n hello all
echo -e "\t no new line"
((sum=5+3))
echo $sum

#while loop

valid=true
count=1
while [ $valid ]
do
echo $count
if [ $count -eq 5 ];
then
break
fi
((count++))
done



#for loop

for (( counter=10; counter>0; counter-- ))
do
echo  "$counter "
done
printf "\n"

#user input

echo "Enter Your Name"
read name
echo "Welcome $name"

# if stmt

n=20
if [ $n>10 ];
then
echo  $n "is greater than 10"
else  
echo   $n "is lesser than  10"
fi

#using if statement with AND logic

echo   "enter the username"
read name
echo  "enter the password "
read password

if [[ ($name == "shyam" && $password == "123") ]];
then
echo  "valid  password"
else
echo   "invalid  password"
fi

count=1
while [ true ]
do
echo $count
if [ $count -eq 10 ];
then
break 
fi
((count++))
done

echo enter a number
read n
if [[ ( n -lt 100 && n -gt 9) ]];
then
echo 2 digit
else
echo not a 2 digit number
fi

echo enter a number
read n
((s=$n%2))
case $s in
0)
echo even number
;;
1)
echo odd number
;;
*)
esac

str1="hello"
echo enter name
read n
echo $str1" "$n

function f1(){
echo 'hello'
}

f1


area(){
area=$(($1*$2))
echo $area
}

area 10 20

echo "Enter string 1"
read str1
echo "Enter string 2"
read str2
echo "Combining these two strings = $str1$str2"


str="Hi All"
substr=${str:3:3}
echo "Substring of $str is $substr"

echo "Enter first number"
read x
echo "Enter second number"
read y
(( sum=x+y ))
echo "The result of addition=$sum"


function greet() {

str="Hello, $name"
echo $str

}

echo "Enter your name"
read name

val=$(greet)
echo "Return value of the function is $val"

echo "Enter directory name"
read newdir
mkdir $newdir

echo "Enter directory name"
read ndir
if [ -d "$ndir" ]
then
echo "Directory exist"
else
mkdir $ndir
echo "Directory created"
fi

echo "Enter filename to remove"
read fn
rm -i $fn



Year=`date +%Y`
Month=`date +%m`
Day=`date +%d`
Hour=`date +%H`
Minute=`date +%M`
Second=`date +%S`
echo `date`
echo "Current Date is: $Day-$Month-$Year"
echo "Current Time is: $Hour:$Minute:$Second"

echo "Wait command" &
process_id=$!
wait $process_id
echo "Exited with status $?"

echo "Wait for 5 seconds"
sleep 5
echo "Completed"
