ansible-vault encrypt group_vars/all/vault.yml
ansible-playbook -i inventory --ask-vault-pass playbook.yml
ansible-vault edit playbook.yml

# Запустить зашифрованный playbook
ansible-playbook --ask-vault-pass playbook.yml -i inventory.ini
ansible-playbook --vault-password-file vault-pass.txt playbook.yml -i inventory.ini
