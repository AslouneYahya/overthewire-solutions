# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit14.html)

# Solution
For this command I opened the content of the ssh.private file, and copied it manually, then I exited bandit13
```bash
bandit13@bandit:~$ cat sshkey.private 
-----BEGIN RSA PRIVATE KEY-----
M ...
...
... zA==
-----END RSA PRIVATE KEY-----
```
I pasted it on a new file called private14 in my directory, and then I used it to ssh to bandit 14:
```bash
aslouneyahya@cloudshell:~$ vi private14
aslouneyahya@cloudshell:~$ ssh -p 2220 -i private14 bandit14@bandit.labs.overthewire.org
bandit14@bandit:~$
```
