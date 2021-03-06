#!/bin/bash --login
domain_name=`hostname`
printf "Updating ${domain_name} w/ Latest Packages ********************************************"
# Repair "==> default: stdin: is not a tty" message
#sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile
#sudo /bin/bash --login -c "sudo cat /dev/null > /etc/issue && sudo cat /dev/null > /etc/issue.net"
sudo apt-get update
sudo apt-get dist-upgrade -y > /dev/null 2>&1
sudo apt-get upgrade -y > /dev/null 2>&1
sudo apt-get install -y apt-file > /dev/null 2>&1
sudo apt-file update
