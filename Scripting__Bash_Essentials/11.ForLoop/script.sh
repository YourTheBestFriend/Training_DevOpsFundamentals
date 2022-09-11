sum=0 
for i in $@; do sum=$(($sum+$i)); done
echo "Sum:$sum" 
echo "Args number: $#" 
echo "Result: $(($sum / $#))" 
