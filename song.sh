#!/bin/bash
trap ctrl_c INT

function ctrl_c() {
	echo -e "\n\n[*]Exiting...\n"
	tput cnorm; exit 0
}

bash -c "systemctl start ssh"
bash -c "eval `ssh-agent -s" >/dev/null
bash -c "ssh-keygen -f /root/.ssh/id_rsa -t rsa -N '' <<< y" >/dev/null

tput civis;
for j in $(seq 1 2); do
	for i in $(seq 1 254); do
		bash -c "ping -c 172.20.$j.$i" >/dev/null && bash -c "sshpass -p XXX ssh-copy-id -i /root/.shh/id_rsa root@172.20.$j.$i" 2>/dev/null && bash -c "ssh root@172.20.$j.$i 'bash -s' < /usr/bin/script.sh" >/dev/null &
	done;
done; wait

tput cnorm
