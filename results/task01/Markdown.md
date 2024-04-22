# for, cut, awk commands and NR

+ These are commonly used commands for file systems and text data manipulations.

## for command
+ for loop is used to iterate over elements of an array that we know, but in bash it goes deeper.
+ In bash, for loops can also be used to iterate over directories and files and file contents.

```bash
for i in {1..5}
do
echo $i
done
```
Generates
```bash
1
2
3
4
5
```
+ It simply iterates over the range.
+ We can also use it like this :
```bash
n=5
for (( i=1 ; i<=$n ; i++ )); 
do
    echo $i
done
```
+ This is so much similar with c.


## cut command:
+ cut command can be used to iterate over file contents but from level.
+ That means lets say you have a csv file and you want to iterate over it column wise. You can do it by using _**cut**_ command.
```bash
cat $file | cut -d ',' -f 3,2
```
+ We have to use cut command with pipe ```|```.
+ ```-d``` means the delimiter on which the data is separated. In _.csv_ files it is ```,```.
+ ```-f``` means the number of fields(columns) that you want to slice.
+ We have another option called ```-c``` which is used to slice character wise. ```-b``` is for byte wise.


## awk
+ ```awk``` is itself a mini programming language.
+ It can be used to iterate over files line by line. We can compare each word by pattern also, because ```awk``` can split sentences into words also.
+ Suppose we have a file name _file.txt_ :
```bash
first line
second line
third line
```
Then by doing ```awk '{print $1}' file.txt```, prints
```
first
second
third
```


## NR
+ ```NR``` the number of rows keeps the track of current input rows.
+ It is most commonly used with ```awk```.