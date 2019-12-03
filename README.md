###
 1. 将`ansible.cfg`放到`/etc/ansible/`目录下
 2. 修改`ansible.cfg`里的`roles_path`变量,使其路径为当前目录的`roles目录,可以使用相对路径
 3. `ansible-playbook -i inventory/hosts inventory/k8stemp.yml -s --ask-sudo-pass --timeout=222` (2.5以上的ansible使用`ansible-playbook -i inventory/hosts  inventory/k8stemp.yaml  -b --ask-become-pass --timeout=222`)所有机器均未使用root连接ssh,但是需要使用root账户,如果使用root账户连接,可不使用-s以及--ask-sudo-pass参数,普通用户需要输入密码
 4. 目前支持CentOS7以及Ubuntu16.04
 5. CentOS7会升级内核到最新的LT版本,重启生效
 6. lb默认不会参与任何task,但是node通过lb连接master,单master可以直接使用master地址作为lb地址,多台master需要自行安装(haproxy,nginx等)
 7. 基于ansible2.5或者更高版本
 8. 修改默认addons不安装metrics-server,默认使用Prometheus-operator
 9. 默认安装dashboard,v1.10.1版本的dashboard对K8S 1.16支持不友好,有很多的404,可以修改变量dashboard为false取消安装
 10. dashboard默认创建admin的sa,默认不输出admin token,修改变量print_admintoken为true时输出,当dashboard不安装时,该步骤跳过
 11. 使用`kubectl get --raw "/apis/custom.metrics.k8s.io/v1beta1/"`命令查看HPA路由配置是否成功
