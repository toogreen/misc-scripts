#!/bin/sh

echo ""
echo ",======================================================."
echo "|  Wordpress Upgrade script v.1.0 created by toogreen  |"
echo "|                  copyright 2020                      |"
echo "'======================================================'"
echo ""
echo "Type the date you want to use for this backup (ex.: 2020-08-29):"
read date
# Create backup folder
mkdir backup/wp/$date

# Dump the MySQL database into it
mysqldump -u toogreen -p wp-blog > backup/wp/$date/blog.db.sql

# Zip all the files from the Wordpress folder into that same folder as well
tar -zcvf backup/wp/$date/blog.tar.gz blog

# Download latest version of Wordpress into a TMP folder
cd tmp
wget http://wordpress.org/latest.zip
unzip latest.zip

# Back into the current production wordpress folder
cd  ../blog
cp -avr ../tmp/wordpress/* .

# Delete new downloaded Wordpress file from temporary folder
rm -rf ../tmp/wordpress ../tmp/latest.zip

# Display Success message
echo "Wordpress upgraded successfully using $date as date in folder backup/wp/$date/"
echo "Please go to the website in your browser to update database in case it is needed"

