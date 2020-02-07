#!/bin/bash
usermod -G vboxsf -a $USER
echo "Added user to boxsf"
sleep 2

# Display hostname
echo "Existing hostname is $HOSTNAME"
# Ask for new hostname
echo "Enter new hostname: "
read NEWHOST

#Change hostname in /etc/hosts and /etc/hostname
sudo sed -i "s/$HOSTNAME/$NEWHOST/g" /etc/hosts
sudo sed -i "s/$HOSTNAME/$NEWHOST/g" /etc/hostname

# Display the hostname
echo "Your new hostname is $NEWHOST"
echo; read -rsn1 -p"Press any key to reboot"
sudo reboot
