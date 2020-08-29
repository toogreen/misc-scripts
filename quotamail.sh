#!/bin/sh

echo ""
echo ",======================================================."
echo "|    Quota setting script v.1.0 created by toogreen    |"
echo "|                  copyright 2006                      |"
echo "'======================================================'"
echo ""
echo "Type the username you want to change quota:"
read username
#Set user's quota
setquota -u $username 200000 250000 0 0 /dev/sda2
echo $username"'s quota changed successfully"
 