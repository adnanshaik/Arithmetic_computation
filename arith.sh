

echo "enter 3 numbers"
read -p "enter num 1:" a
read -p "enter num 2:" b
read -p "enter num 3:" c

result1=$(( a+b*c ))
result2=$(( a*b+c ))
result3=$(( c+a/b ))
result4=$(( a%b+c ))

dict[1]=$result1
dict[2]=$result2
dict[3]=$result3
dict[4]=$result4

for i in ${dict[@]}
do
        arr[k]=$i
        ((k++))
done
