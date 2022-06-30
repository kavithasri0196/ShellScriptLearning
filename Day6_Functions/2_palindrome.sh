#!/bin/bash
function isPalindrome()
{ 
len=${#1}
reverse=""
for((i=$len -1;i>=0;i--))
do
reverse="$reverse${1:$i:1}"
done
if [ $1 ==  $reverse ]
then
echo Given input $inp is a palindrome
else

echo Given input $inp is not a palindrome
fi
}
read -p "Enter input string or number to check whether it is a palindrome:" inp
isPalindrome $inp 

