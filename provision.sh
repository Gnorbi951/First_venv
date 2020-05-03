#! /bin/bash

useradd -m -s /bin/bash -U admin;
echo "admin:admin" | chpasswd;
mkdir /home/admin/.ssh;
cat /dev/zero | ssh-keygen -q -N "" > /dev/null -f /home/admin/.ssh/id_rsa;
cat /home/vagrant/id_rsa.pub > /home/admin/.ssh/authorized_keys;
rm /home/vagrant/id_rsa.pub