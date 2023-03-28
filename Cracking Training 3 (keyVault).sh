#!/bin/bash
for i in {0..999999}
do
    test=$(./keyVault $i)
    check="Wrong password"
    if ! [ "$test" == "$check" ]
    then
        num=$i
        break
    fi
done
ans=$(./keyVault $num)
ansDecoded=$(echo "$ans" | awk '{print $5}' | base64 -d)
echo "the pass word is: $num"
echo "the answer the: $ans"
echo "the passphrase is: $ansDecoded"S