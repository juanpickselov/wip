#!/usr/bin/env bash

my_list=($(cat info-data.txt))

echo ${my_list[@]}

for item in "${my_list[@]}"
do
   echo "${item}" 
done
