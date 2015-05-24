#shadowsocksService  Document


## Depends 

 - python 
 - pip	 
 - FreeBSD
  + linux-os
## Include Part
 - download a shadowsocks
 - start a service for shadowsocks server and local 
 
## Introduction 
## Install 

> sudo ./install.sh


## Useage 


> sudo service shadowsocksd [start|stop] # this will include ssserver and sslocal ,in other word , this service can build shadowsocks or connect to a exit ssserver within same shadowsocks.json whtich is shadowsocks's conifg file .

