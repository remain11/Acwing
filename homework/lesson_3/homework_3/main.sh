#! /bin/bash

read n
read m

m=$((m - 1))

fact[0]=1
get() {
    cnt=0
    local i=0
    for ((i = 1; i <= n; i++)); do
        if [ ${st[$i]} -eq 0 ]; then
            if [ $cnt -eq $1 ]; then
                st[$i]=1
                printf "%d " $i
                return 0
            fi
            cnt=$((cnt + 1))
        fi
    done
}

for ((i = 1; i <= n; i++)); do
    st[$i]=0
    x=$((i - 1))
    fact[$i]=$((fact[x] * i))
    #echo ${fact[$i]}
done

for ((i = 1; i <= n; i++)); do
    p=$((m / fact[n - i]))
    q=$((m % fact[n - i]))
    #printf "%d %d\n" $p $q
    #printf "i = %d " $i
    get $p
    #printf "%d " $(get $p)
    #for((j = 1; j <= n; j++)); do
    #    printf "%d " ${st[$j]}
    #done
    #echo ""
    m=$q
done

