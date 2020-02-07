# linux-bootstrap
A quick repo for me to bootstrap ubuntu boxes
- sudo apt-get -y install git
- mkdir -p ~/repos/bootstrap
- git clone https://github.com/foxtrot-22/linux-bootstrap.git ~/repos/bootstrap
- sudo bash ~/repos/bootstrap/1-pre-ga.sh
** Wait for reboot **
- sudo bash ~/repos/bootstrap/2-post_ga_installs.sh
** Wait for reboot **
