#!/bin/sh

echo ""
echo ",======================================================."
echo "| CMail user creation script v.1.0 created by toogreen |"
echo "|                  copyright 2006                      |"
echo "'======================================================'"
echo ""
echo "Type new user's username:"
read username
adduser $username &&
cd /home/$username
#Making directory and subdirs and make them writeable
mkdir Maildir
chown $username.$username Maildir
cd Maildir
mkdir cur new tmp
chown $username.$username *
#Set user's quota
setquota -u $username 200000 250000 0 0 /dev/sda2%
