# setup.sh
apt-get -y update
apt-get -y install gnupg2
echo 'deb http://ppa.launchpad.net/virtualsquare/umps/ubuntu focal main' \
  | tee /etc/apt/sources.list.d/virtualsquare-ubuntu-umps-focal.list
apt-key -y adv --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv-keys 046AB1F65C49333A
apt-get -y install xauth umps3
