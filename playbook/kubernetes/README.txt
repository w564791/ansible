## 使用方法
ansible-playbook  -i inventory/hosts  inventory/k8stemp.yml  -s --ask-sudo-pass

如果提示超时 可以增加--timeout参数
