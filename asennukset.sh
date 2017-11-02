echo "***************************"
echo " "
echo "Moi Mikko"
echo " "
echo "***************************"
sudo timedatectl set-timezone Europe/Helsinki
setxkbmap fi
sudo apt-get update
sudo apt-get install -y git tree puppet

git clone https://github.com/Baddinki/knutas_puppet.git

 sudo puppet apply --modulepath ~/knutas_puppet/puppet/modules/ -e 'class {"ssh":}'

echo "***************************"
echo " "
echo "Ready steady go!"
echo " "
echo "***************************"
