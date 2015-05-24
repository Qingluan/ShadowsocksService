#!/bin/sh

CONFIG_FILE="shadowsocks.json";


#sudo pip install shadowsocks  2> /tmp/err.log  >&1 ;

gen_conifg(){

echo "{ " > $CONFIG_FILE;

echo "server : ";
read SERVER;
echo "    \"server\":\"$SERVER\"," >> $CONFIG_FILE;

echo "server_port:";
read SERVER_PORT;
echo "    \"server_port\":$SERVER_PORT," >> $CONFIG_FILE;

echo "local_address:";
read LOCAL_ADDRESS;
echo "    \"local_address\":\"$LOCAL_ADDRESS\"," >> $CONFIG_FILE;

echo "local_port";
read LOCAL_PORT;
echo "    \"local_port\":$LOCAL_PORT," >> $CONFIG_FILE;

echo "    \"method\":\"aes-256-cfb\"," >> $CONFIG_FILE;

echo "password:";
read PASSWORD ;
echo "    \"password\":\"$PASSWORD\"," >> $CONFIG_FILE;

echo "    \"timeout\":600" >> $CONFIG_FILE;
echo "}">> $CONFIG_FILE;
}
	
echo "if gen a shadowsocks.json file [y/n]\r"
read choose;
case $choose in
	"y")
		gen_conifg
		;;
	"n")
		echo "no config gen";
esac



cat shadowsocks.json ;
echo "check if right : [y/n] \r"
read press;


case $press in 
	"y")
		echo "$(sudo cp shadowsocks.json /etc/ )";
		
		;;
	"n")
		echo "create a file shadowsocks.json but not copy to /etc "
		;;
esac


echo "if install service ? [y/n]  ! this service only work in linux os \r";
read choose;
case $choose in 
	"y")
		echo "$(sudo cp shadowsocksd /etc/init.d/ )";
		;;
esac


echo "install compelte !";


