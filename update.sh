#!/usr/bin/bash

echo "Copying new versions of files from system to repo"
sudo cp -pLi /etc/pam.d/login etc/pam.d/
sudo cp -rpLi /etc/portage/package.accept_keywords etc/portage/
sudo cp -rpLi /etc/portage/package.use etc/portage/
sudo cp -rpLi /etc/portage/repos.conf etc/portage/
sudo cp -rpLi /etc/portage/repos.conf etc/portage/
sudo cp -pLi /etc/portage/make.conf etc/portage/make.conf
sudo cp -rpLi /etc/sudoers.d etc/
cp -rpLi /home/loicdm/.config/fontconfig/fonts.conf home/loicdm/.config/fontconfig/fonts.conf
echo "DONE"
echo "Changing permissions of copyied files to $USER"
sudo chown -R $USER:$USER .
echo "DONE"
