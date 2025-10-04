#!/bin/bash
for ((i=128;i<=135;i++))
do

dat=$(date +%F)
s="192.168.46.$i"
ping -c2 $s >/dev/null
if [[ $? -eq 0 ]]
then
echo "Server $s is reachable">>reach_$dat.txt
ssh $s "exit"
if [[ $? -eq 0 ]]
then
echo "Server $s is sshable">>ss_$dat.txt
ssh $s "uptime;hostname"
else
echo "Server $s is not sshable">>nss_$dat.txt
fi
else
echo "Server $s is not reachable">>nreach_$dat.txt

fi
done

