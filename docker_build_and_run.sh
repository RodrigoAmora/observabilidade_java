#!/bin/bash

#############################################
### Shellscript to up Docker's containers ###
#############################################

echo -e "\033[01;32m############################\033[01;32m"
echo -e "\033[01;32m### Building application ###\033[01;32m"
echo -e "\033[01;32m############################\033[01;32m"
echo -e "\n\n"

cd app/
rm -rf target/
mvn clean package
cd ../

echo -e "\n\n"
echo -e "\033[01;32m###########################\033[01;32m"
echo -e "\033[01;32m### Building containers ###\033[01;32m"
echo -e "\033[01;32m###########################\033[01;32m"
echo -e "\n\n"

sudo docker-compose build

echo -e "\n\n"
echo -e "\033[01;32m########################\033[01;32m"
echo -e "\033[01;32m### Uping containers ###\033[01;32m"
echo -e "\033[01;32m########################\033[01;32m"
echo -e "\n\n"

sudo docker-compose up -d
