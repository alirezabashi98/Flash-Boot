#!/bin/bash

read -p "Enter the path of the ios file : " filePath

read -p "Enter the arrow path You can use the lsblk command : " arrows

echo $filePath
echo $arrows

sudo dd if=$filePath | pv -s 2G | sudo dd of=$arrows bs=3M
