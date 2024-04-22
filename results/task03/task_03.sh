for i in {1..40000}
do
echo "This is line no $i"
done > task3_data.txt;

read n

index=1

while read p;
do
if [ $((index % n)) -eq 0 ];
then
echo "$p" >> task3_output.txt
fi
((index++))
done < task3_data.txt