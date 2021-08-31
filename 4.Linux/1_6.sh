#!/bin/bash
while :
do
read -r -p "Please enter one character " str
if [ ${#str} -eq 1 ];
then
case $str in
[a-z]) echo "Low case";;
[A-Z]) echo "Upper case";;
[0-9]) echo "Digit";;
* ) echo "Another character";;
esac
break
else
echo "Not a valid input"
fi
done
