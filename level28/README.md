# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit28.html)

# Solution
I cloned that repository locally, and I found password of bandit28 in a file called `README` in `repo` directory inside my clone repository:

```bash
aslouneyahya@cloudshell:~$ git clone ssh://bandit27-git@bandit.labs.overthewire.org:2220/home/bandit27-git/repo
Cloning into 'repo'...
...
backend: gibson-1
bandit27-git@bandit.labs.overthewire.org's password: 
remote: Enumerating objects: 3, done.
aslouneyahya@cloudshell:~$ cd repo/
aslouneyahya@cloudshell:~/repo$ cat README 
The password to the next level is: ...
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX1+oOAb7OJMGpGUfZXrVP/A40rrnlcO99FWHy+R4DUuPiEIINR0b9LSCoA74Xi7OdLbdycKIYg0cXg==`
  
</details>

After saving the resulted password, log in to bandit28.
