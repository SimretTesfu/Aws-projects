#!/bin/bash

read -p "Enter your name: " name
read -p "Enter your age: " age
read -p "Enter your average life expectancy: " ale

echo "$name"

if [ "$age" -lt 18 ]; then
    echo "student"
    echo "At least $((18 - age)) years to become a worker."
elif [ "$age" -ge 18 ] && [ "$age" -lt 65 ]; then
    echo "worker"
    echo "$((65 - age)) years to retire."
else
    if [ "$age" -lt "$ale" ]; then
        echo "Retired"
        echo "$((ale - age)) years left to live."
    else
        echo -e "\007"
        echo "!!! Already died!!!"
    fi
fi
