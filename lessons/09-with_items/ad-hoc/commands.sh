ansible all --limit tangerine -i inventory.ini -m setup | less
ansible webservers -i inventory.ini -m setup | less
ansible-playbook playbook.yml -i inventory.ini

# Tangerine
ssh user@80.78.255.132 