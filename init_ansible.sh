#!/bin/bash
. /etc/os-release
install_ansible(){
        pip install --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple
	pip install ansible==2.5.15 -i https://pypi.tuna.tsinghua.edu.cn/simple

}
if [ $ID = "ubuntu" ] && [ $VERSION_ID = "16.04" ];then
	apt update
        apt install python-pip -y
        install_ansible       
elif [ $ID = "centos" ] && [ $VERSION_ID = "7" ];then
        yum makecache
        yum install python-pip  -y
        install_ansible
fi
 


