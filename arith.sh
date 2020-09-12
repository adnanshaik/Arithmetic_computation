

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


for((k=0;k<=$(( ${#arr[@]}-1 ));k++))
do
for((j=$(( k+1 ));j<=${#arr[@]}-1;j++))
do
        if [[ ${arr[k]} -lt ${arr[j]} ]]
        then
                temp=${arr[k]}
                arr[k]=${arr[j]}
                arr[j]=$temp
        fi
done
done
echo ${arr[@]}

for((k=0;k<=$(( ${#arr[@]}-1 ));k++))
do
for((j=$(( k+1 ));j<=${#arr[@]}-1;j++))
do
        if [[ ${arr[k]} -gt ${arr[j]} ]]
        then
                temp=${arr[k]}
                arr[k]=${arr[j]}
                arr[j]=$temp
        fi
done
done
echo ${arr[@]}
