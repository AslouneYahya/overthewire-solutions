# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit26.html)

# Solution
I pasted the content of in my local storage:

```bash
bandit25@bandit:~$ ls
bandit26.sshkey
```
Then I looked for bandit26 in `/etc/passwd` file, so I can check any special configuration for bandit26:

```bash
bandit25@bandit:~$ grep "bandit26" /etc/passwd
bandit26:x:11026:11026:bandit level 26:/home/bandit26:/usr/bin/showtext
```
Then I read the content of `/usr/bin/showtext` using `cat` command:

```bash
bandit25@bandit:~$ cat /usr/bin/showtext
#!/bin/sh

export TERM=linux

exec more ~/text.txt
exit 0
```

The trick here is I should minimize my terminal session to read few lines, so the `more` commands could hang, and I could change the variable shell to "/bin/shell", by clicking on v, then typing ":set shell=/bin/bash" hitting enter, then type ":shell", by hitting enter, I had access to home directory of bandit26.

Then, I used `bandit27-do` executable to open `/etc/bandit_pass/bandit27` as bandit27 user:
```bash
bandit26@bandit:~$ ./bandit27-do cat /etc/bandit_pass/bandit27                                                                                                                             
(password of bandit27)
```

