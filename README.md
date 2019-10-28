###
 1. 将ansible.cfg放到`/etc/ansible/`目录下
 2. 修改ansible.cfg里的roles_path变量,使其路径为当前目录的roles目录,可以使用相对路径
 3. ansible-playbook -i inventory/hosts inventory/k8stemp.yml -s --ask-sudo-pass --timeout=110 所有机器均未使用root连接ssh,但是需要使用root账户,如果使用root账户连接,可不使用-s以及--ask-sudo-pass参数,普通用户需要输入密码
 4. 目前支持CentOS7以及Ubuntu16.04
 5. CentOS7会升级内核到最新的LT版本,重启生效
 6. lb默认不会参与任何task,但是node通过lb连接master,单master可以直接使用master地址作为lb地址,多台master需要自行安装(haproxy,nginx等)

