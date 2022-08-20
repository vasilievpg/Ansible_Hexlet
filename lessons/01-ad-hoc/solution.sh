#!/bin/bash

# BEGIN (write your solution here)
ansible all -i inventory.ini -m file -a "path=/tmp/hello_world state=touch"
# END
