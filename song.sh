#!/bin/bash

trap ctrl_c INT

function ctrl_c() {
	echo -e "\n\n[*]Exiting...\n"
	tput cnorm; exit 0
}

while ! ping -c 1 -n -w 1 google.com &> /dev/null
do
	sleep 1
	echo "espera "
done
printf "\n%s\n"  "Server is back online"

bash -c "echo \"\" > /root/.ssh/known_hosts"
bash -c "systemctl start ssh"
bash -c "eval `ssh-agent -s`" >/dev/null
bash -c "ssh-keygen -f /root/.ssh/id_rsa -t rsa -N '' <<< y" >/dev/null

tput civis;
for i in $(seq 1 254); do
	bash -c "ping -c 1 172.20.2.$i" >/dev/null && bash -c "sshpass -p *** ssh-copy-id -i /root/.ssh/id_rsa root@172.20.2.$i" >/dev/null && bash -c "ssh root@172.20.2.$i 'bash -s' < /usr/bin/script.sh" >/dev/null &
done; wait

tput cnorm
