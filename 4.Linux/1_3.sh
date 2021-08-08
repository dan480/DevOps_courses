read -rt 5 -p "Input string: " str
if [[ -z "$str" ]]; then
echo "The time is over"
exit 0
else
echo "$str"
exit 1
fi
