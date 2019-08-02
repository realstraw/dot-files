#!/usr/bin/env bash

set -xe

backup_folder=$1; shift

echo "Moving data in backup folder..."

mkdir -p $backup_folder

cp -r ~/.aws $backup_folder/dot_aws
cp -r ~/.ssh $backup_folder/dot_ssh
cp -r ~/.ec2 $backup_folder/dot_ec2
cp ~/.awsrc $backup_folder/dot_awsrc
cp ~/.awsrc-pi $backup_folder/dot_awsrc-pi
cp ~/.profile $backup_folder/dot_profile

tar zcvf $backup_folder.tar.gz $backup_folder
gpg -c -o $backup_folder.tar.gz.gpg $backup_folder.tar.gz

echo "Cleaning up..."

rm -rf $backup_folder
rm -rf $backup_folder.tar.gz

echo "Done! Encrypted backup file in $backup_folder.tar.gz.gpg"
