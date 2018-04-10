#! /bin/bash 
# This is for counting the code review result script 

echo 'After review file number'  > README.md 
echo '===================='  >> README.md
grep -r wisely core/ | awk -F: '{print $1}' | uniq | grep -v Binary| cat -b >> README.md 
grep -r wisely common/ | awk -F: '{print $1}' | uniq | grep -v Binary | cat -b >> README.md 
echo 'todo list '  >> README.md 
echo '===================='  >> README.md
grep -r "todo:" core/ | awk -F: '{print $1}' | uniq | grep -v Binary| cat -b >> README.md 
grep -r "todo:" common/ | awk -F: '{print $1}' | uniq | grep -v Binary | cat -b >> README.md 
