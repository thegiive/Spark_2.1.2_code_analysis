#! /bin/bash 
# This is for counting the code review result script 

echo 'After review file number'  > README.md 
echo '===================='  >> README.md
grep -r wisely core/ | awk -F: '{print $1}' | uniq | cat -b >> README.md 
