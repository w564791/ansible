###
 1. ��ansible.cfg�ŵ�`/etc/ansible/`Ŀ¼��
 2. �޸�ansible.cfg���roles_path����,ʹ��·��Ϊ��ǰĿ¼��rolesĿ¼,����ʹ�����·��
 3. ansible-playbook -i inventory/hosts inventory/k8stemp.yml -s --ask-sudo-pass --timeout=110 ���л�����δʹ��root����ssh,������Ҫʹ��root�˻�,���ʹ��root�˻�����,�ɲ�ʹ��-s�Լ�--ask-sudo-pass����,��ͨ�û���Ҫ��������