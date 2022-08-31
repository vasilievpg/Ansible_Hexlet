# Начальная настройка сервера
ssh root@194.67.78.235
# Добавляем пользователя
adduser user
# Даем права sudo
usermod -aG sudo user
# Копируем ключи
ssh-copy-id user@194.67.78.235
# Перезапускаем службу ssh Необязательно
sudo systemctl restart ssh
# Открываем терминал в новом окне и проверяем, что работает подключение
ssh user@194.67.78.235


# Копируем ключи root
ssh-copy-id root@194.67.78.235
ssh-copy-id user@194.67.78.235
# Перезапускаем службу Необязательно
sudo systemctl restart ssh


# Запускаем playbook
ansible-playbook touch_useradd.yml -i inventory.ini

# Посмотреть факты Ansible на серверах
ansible all --limit wolframium -i inventory.ini -m setup | less
ansible webservers -i inventory.ini -m setup | less
ansible-playbook playbook.yml -i inventory.ini

# Посмотреть установленные коллекции
ansible-galaxy collection list

# Шифрование
ansible-vault encrypt group_vars/all/vault.yml