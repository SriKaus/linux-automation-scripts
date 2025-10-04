#!/bin/bash
for u in "sai" "lohri" "sriram" "kali"
do
col=$(getent passwd $u|wc -l)
if [[ $col -eq 1 ]]
then
echo "The user $u already exists"
cop=$(getent shadow $u|cut -d ":" -f2|wc -c)
if [[ $cop -gt 3 ]]
then
echo "The password is set for the user $u"
else
echo "The password is not set for the user $u"
echo "Enter y to set the password"
read  con
if [[ $con == y ]]
then
echo "Enter the password to be set"
read -s pas
echo $pas|passwd $u --stdin
else
echo "User did not confirm to set the password"
fi
fi

else
echo "The user $u doesn't exist"
useradd $u
echo "The user is successfully created"
getent passwd $u
echo "Enter the password to be set"
read -s pa
echo $pa|passwd $u --stdin
co=$(getent shadow $u|cut -d ":" -f2|wc -c)
if [[ $co -gt 3 ]]
then
echo "The password is set for the user $u successfully"
echo "Enter the group name to be added "
read gn
groupadd $gn
echo "The group with the name $gn is successfully created"
getent group |grep $gn
usermod -G $gn $u
echo "The user $u is successfully added to the group $gn "
groups $u
else
echo "The password is not set for the user"
fi
fi

done
