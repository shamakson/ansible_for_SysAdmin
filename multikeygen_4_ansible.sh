#!/bin/bash

#Author: Eric Samakinwa
###############################################################
#                                                             #
# If the hostname or IP addresses are already in a file, then #
# start the loop with (for ip in `cat /path/to/file`)         #
# Let's assume that we created our inventory list first       #
# We can then generate our key and the copy to all our hosts  #
###############################################################
# Generate key on the Control node
ssh-keygen -y -f $HOME/.ssh/id_rsa

echo "public key generated"

# Enter your password here!!!
#
password=

# Change Path

# Remember to install "sshpass" to handle passwords
# Change the path to your ansible host

#managed_hosts=~/ansible/hosts 

for ip in `cat $managed_hosts | grep -v '^\['`;  
do
  echo "Please remember to delete your password from this script!"
  echo "Working on $ip"
  sshpass -p "$password" ssh-copy-id -f -i ~/.ssh/id_rsa.pub $ip  
  echo "Key generated and exchanged with $ip"
done


