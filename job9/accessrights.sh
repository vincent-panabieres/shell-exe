#!/usr/bin/bash

my_input="/home/panabieres/Shell_Userlist.csv"
declare -a Id
declare -a Prenom
declare -a Nom
declare -a Mdp
declare -a Role

while IFS=, read -r Id Prenom Nom Mdp Role;
do
        Id+=("$Id")
        Prenom+=("$Prenom")
        Nom+=("$Nom")
        Mdp+=("$Mdp")
        Role+=("$Role")

done<$my_input

for index in "${!Id[@]}";
do
    sudo groupadd "${Role[$index]}";
    sudo useradd -g "${Id[$index]}" \
                 -d "/home/${Nom[$index]}" \
             -s "/bin/bash" \
             -p "$(echo "${Mdp[$index]}" | openssl passwd -1 -stdin)" "${Prenom[$index]}"
         done
