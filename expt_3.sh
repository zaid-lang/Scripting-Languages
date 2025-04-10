#!/bin/bash
# Usage: ./number_properties.sh number
if [ -z "$1" ]; then
    echo "Usage: $0 number"
    exit 1
fi

num=$1

# Function to calculate factorial
factorial() {
    local n=$1
    fact=1
    for (( i=1; i<=n; i++ )); do
        fact=$(( fact * i ))
    done
    echo "$fact"
}

# Perfect Number
sum=0
for (( i=1; i<=num/2; i++ )); do
    if (( num % i == 0 )); then
        sum=$(( sum + i ))
    fi
done
if [ "$sum" -eq "$num" ]; then
    echo "$num is a Perfect number."
else
    echo "$num is not a Perfect number."
fi

# Strong Number: sum of factorials of digits equals the number
strong=0
temp=$num
while [ $temp -gt 0 ]; do
    digit=$(( temp % 10 ))
    fact=$(factorial $digit)
    strong=$(( strong + fact ))
    temp=$(( temp / 10 ))
done
if [ "$strong" -eq "$num" ]; then
    echo "$num is a Strong number."
else
    echo "$num is not a Strong number."
fi

# Armstrong Number (for three-digit numbers, sum of cubes of digits equals the number)
sum_cubes=0
temp=$num
while [ $temp -gt 0 ]; do
    digit=$(( temp % 10 ))
    sum_cubes=$(( sum_cubes + digit*digit*digit ))
    temp=$(( temp / 10 ))
done
if [ "$sum_cubes" -eq "$num" ]; then
    echo "$num is an Armstrong number."
else
    echo "$num is not an Armstrong number."
fi

# Palindrome Check
str="$num"
rev=$(echo "$str" | rev)
if [ "$str" == "$rev" ]; then
    echo "$num is a Palindrome."
else
    echo "$num is not a Palindrome."
fi
