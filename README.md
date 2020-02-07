# linux-bootstrap
A quick repo for me to bootstrap ubuntu boxes
- sudo apt-get -y install git
- mkdir -p ~/repos/bootstrap
- git clone https://github.com/foxtrot-22/linux-bootstrap.git ~/repos/boostrap
- sudo chmod +x ~/repos/bootstrap/*.sh
- sudo ~/repos/linux-bootstrap/1-init_installs.sh
5. wait for reboot
6. sudo ~/repos/linux-bootstrap/2-post_ga_installs.sh
