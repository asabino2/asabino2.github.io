#!/usr/bin
#apt install software-properties-common -y
apt-get update
add-apt-repository ppa:nilarimogard/webupd8 
apt-get update >> /tmp/update.txt 2>&1; awk '( /W:/ && /launchpad/ && /404/ ) { print substr($5,26) }' /tmp/update.txt > /tmp/awk.txt; awk -F '/' '{ print $1"/"$2 }' /tmp/awk.txt > /tmp/awk1.txt; uniq /tmp/awk1.txt > /tmp/awk2.txt
echo "install streamlink"
apt install streamlink -y
cd /usr/bin
echo "downloading streamproxy from github"
curl -L https://github.com/asabino2/streamproxy/releases/download/streamproxy-latest/streamproxy -O
echo "making streamproxy file as executable"
chmod +x /usr/bin/streamproxy
echo ""
echo ""
echo ""
echo "streamproxy, streamlink and ffmpeg was installed"
