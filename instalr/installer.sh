#script by noob hackers
#subscribe our youtube channel noob hackers
clear
echo " "
if [ -e $HOME/ngrok ];
then
ping -c1 -i3 google.com
if [ $? -eq 0 ]
then
cd $HOME/tunnel
bash tunnel.sh
exit 0
else
clear
echo " "
printf "               Turn On Internet Please....!"
echo " "
cd $HOME/tunnel/do
bash do.sh
fi
echo ' '
printf "               Ngrok installed and starting....!"
echo ' '
sleep 3.0
clear
else
clear
echo " "
printf "               Ngrok Is Installing Wait..../"
echo " "
sleep 3.0
clear
cd $HOME
pkg install wget -y
pkg install mpv -y
wget --no-check-certificate https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip
unzip ngrok-2.2.8-linux-arm64.zip
chmod +x ngrok
rm -rf ngrok-2.2.8-linux-arm64.zip
clear
echo " "
printf "                  Ngrok os Starting....!"
echo " "
sleep 3.0
fi
echo " "
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
echo ""
########
cd $HOME
clear
echo  " "
printf "   #> Script By Noob Hackers <# "
printf "\n"
printf "  >> Enter Port Number ✈ [ 4 digit] : "
echo " "
read ports
if [ $ports = 0 ]; then
cd $HOME/tunnel
bash tunnel.sh
else
./ngrok tcp $ports
fi
cd $HOME
cd $HOME/tunnel
bash tunnel.sh
