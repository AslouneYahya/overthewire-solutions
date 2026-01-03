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
<details>
  <summary>Encrypted private key:</summary>
  
  `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
IIXFwKgAm/JYfbiFJMa8xg==`
  
</details>
