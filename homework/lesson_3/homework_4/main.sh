#! /bin/bash

read n < $1

sum=0

for ((i = 1; i <= n; i++));do
    sum=$((sum + i * i))
done

echo ${sum} > $2
