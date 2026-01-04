# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit20.html)

# Solution
By running `ls -l` command, I knew that the file has setuid permission:
```bash
bandit19@bandit:~$ ls -l
total 16
-rwsr-x--- 1 bandit20 bandit19 14884 Oct 14 09:26 bandit20-do
```
So during the execution of `bandit20-do` I can execute commands as bandit20 user, and I used this to access to content of /etc/bandit_pass/bandit20:
```bash
bandit19@bandit:~$ ./bandit20-do cat /etc/bandit_pass/bandit20
(password of bandit20)
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX1/Vk5ksHgUd41xbej9yEh8iSUupgk2lbb68e9tfqpmt8rwauoEgT1lrhx6rmgulCDPS1s/2rfzwuw==`
  
</details>

After saving the resulted password, log in to bandit20.
