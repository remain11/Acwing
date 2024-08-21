#! /bin/bash
# 这是一行注释
echo "lsls!"
echo "jjy!"
echo "Hello World" #这也是注释
:<<11
注释1
注释2
11
:<<EOF
注释1
注释2
EOF

# 这是一行注释
echo "Hello World" #这也是注释
:<<11
注释1
注释2
11
:<<EOF
注释1
注释2
EOF

name1=ls
name2='ls'
name3="ls ls"

echo $name1
echo ${name2}
echo ${name3}11

readonly name2
declare -r name2

# name2=11 会报错

unset name2

echo ${name3}?11

echo 'hello, ${name1} \"hh\"'  #原样输出
echo "hello, ${name1} \"hh\""
echo  hello, ${name1} \"hh\"    
echo ${#name1}    #字符串长度
echo ${name1:0:1} #从0开始提取一个

echo "文件名" $0
echo "第一个参数" $1
echo "第三个参数" $3

echo $# # 传入参数个数
echo $* # 传入的所有参数
echo $@ # 传入的所有参数,双引隔开
echo $$ # 运行id
echo $? # 上条命令的运行状态
echo $(ls) # 获取命令的标准输出
echo `pwd` # 同上

array=(1 ls "ls" 111)

array[0]=2

echo ${array[1]}

echo ${array[@]} ${#array[*]} #输出整个数组

echo $(expr length "$name3")
echo `expr index "Hello LiSheng" hls`
echo $(expr substr "${name3}" 1 2) #这个把字符串当成下标为1开始

a=3 b=4

echo `expr $a + $b` 
echo `expr $a - $b` 
echo `expr $a \* $b` # *需要转义 
echo `expr $a / $b` 
echo `expr $a % $b` 
echo `expr \( $a + 1 \) \* \( $b + 1 \)` 


echo `expr $a \> $b` 
echo `expr $a \< $b` 
echo `expr $a '>=' $b` 
echo `expr $a \<\= $b` 

echo `expr 0 \& 5` 
echo `expr $a '&' $b` #这里返回第一个数
echo `expr 0 '|' 5`   #返回第一个不为0的数
echo `expr $a \| $b` 

read -p "你叫啥名？" -t 5 name #提示信息,等待时间最多5s,读入

echo hello,$name

echo -e "hello\nls\c" #开启转义 取消尾换行

printf "I miss %s %d\n" ls 11
printf "%d + %d = %d" $a $b `expr $a + $b`

echo ""

test 1 -lt 2 # 比较

test -e test.sh && echo 'exist' || echo 'Not exist' # 实现if else语句

:<<参数
-e 文件是否存在
-f 文件
-d 目录

参数

if [ "$a" -lt "$b" ] && [ "$a" -gt 2 ]
then
    echo ${a}在范围内
fi

if [ 3 -eq 3 ] 
then
    echo "ls 333"
fi

if expr 3 '==' 3 #expr 会输出exit code中的值
then
    echo "ls 444"
fi

if ! [ "$a" -lt "$b" ]
then
    echo ${a}不小于${b}
else
    echo ${a}小于${b}
fi

if [ $a -eq 1 ]
then
    echo ${a}等于1
elif [ $a -eq 3 ]
then
    echo ${a}等于3
else
    echo 其他
fi

case $a in
    1)
        echo "!"
        ;; #理解为C++里的break
    2)
        echo "~~"
        ;;
    *)
        echo "Wa"
        ;;
esac

for i in ls 11 l s `ls`
do
    echo $i
done

for i in $(seq 1 10) {z..a}
do
    echo $i
done

for ((i = 1; i <= 10; i++))do
    echo $i
done

:<<while
while read name 
do
    echo ${name}
done
while

until [ "${word}" == "ls" ] || [ "${word}" == "LS" ]
do
    read -p "Please input ls/LS to stop this program: " word
done

while read name
do
    for ((i=1;i<=10;i++))
    do
        case $i in
            8)
                break
                ;;
            *)
                echo $i
                ;;
        esac
    done
done


for ((i=1;i<=10;i++))
do
    if [ `expr $i % 2` -eq 0 ]
    then
        continue
    fi
    echo $i
done

fun() {
    echo $name
    name=ls
    echo $name
    return 0
}

output=$(fun)
ret=$?

echo "$output $ret"

func() {
    if [ $1 -le 0 ]
echo -e "Hello ls\c" > output.txt
    then
        echo 0
        return 0
    fi
    sum=$(func `expr $1 - 1`)
    echo $(expr $sum + $1)
}

echo `func 1`

if [ $# -ne 4 ] 
then
    echo "arguments vaild"
    #exit 0
else
    echo "arguments invaild"
    #exit 1
fi

echo -e "Hello ls\c" > output.txt
echo  "ls" >> output.txt

read str < output.txt
echo $str
