由于网络原因,文件都是下载在本地的,下载链接如下
mongodb下载地址:
CentOS7
https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-rhel70-3.4.4.tgz
CentOS6
https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-rhel62-3.4.4.tgz
Ubuntu 14.04
https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1404-3.4.4.tgz
然后放在files目录(需要解压为tar格式?没有测试过tgz包)

其中firewalld-roles的变量来自mongodb/default/main.yml(我是直接做的硬链接)

文中涉及的keyfile因为隐私问题,需要自定义