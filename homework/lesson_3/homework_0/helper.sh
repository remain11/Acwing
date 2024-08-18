#! /bin/bash

dir0=~/homework/lesson_1

#-- homework 0 --
homework 1 create 0

dir=${dir0}/homework_0

for i in dir_a dir_b dir_c 
do
    mkdir ${dir}/$i
done

# --                

# -- homework 1 --

homework 1 create 1

dir=${dir0}/homework_1

for i in `ls ${dir}`
do
    cp ${dir}/$i ${dir}/${i}.bak
done

# --                

# --                

# -- homework 2 --

homework 1 create 2

dir=${dir0}/homework_2

for i in `ls ${dir}`
do
    mv ${dir}/$i ${dir}/${i:0:1}_new.txt
done

# --                

# --                

# -- homework 3 --

homework 1 create 3

dir=${dir0}/homework_3

for i in `ls ${dir}/dir_a`
do
    mv ${dir}/dir_a/$i ${dir}/dir_b
done

# --                

# --                

# -- homework 4 --

homework 1 create 4

dir=${dir0}/homework_4

for i in `ls ${dir}`
do
    rm ${dir}/$i
done

# --                

# --                

# -- homework 5 --

homework 1 create 5

dir=${dir0}/homework_5

for i in `ls ${dir}`
do
    rm ${dir}/$i -r
done

# --                

# --                

# -- homework 6 --

homework 1 create 6

dir=${dir0}/homework_6

mkdir ${dir}/dir_a
mv ${dir}/task.txt ${dir}/dir_a/done.txt

# --               

# --                

# -- homework 7 --

homework 1 create 7

dir=${dir0}/homework_7

for i in $(seq 0 2)
do
    mkdir ${dir}/dir_$i
done

for i in `ls ${dir}` 
do
    # -d要写在前面
    if  [ -d ${dir}/$i  ]
    then
        continue
    fi
    for ((j = 0; j <= 2; j++)) 
    do
        cp ${dir}/${i} ${dir}/dir_${j}/${i:0:1}${j}.txt
    done
done

# --                

# --                

# -- homework 8 --

homework 1 create 8

dir=${dir0}/homework_8

rm ${dir}/dir_a/a.txt
mv ${dir}/dir_b/b.txt ${dir}/dir_b/b_new.txt
cp ${dir}/dir_c/c.txt ${dir}/dir_c/c.txt.bak

# --                

# --                

# -- homework 9 --

homework 1 create 9

dir=${dir0}/homework_9

rm ${dir}/*.txt

# --                

homework 1 test
