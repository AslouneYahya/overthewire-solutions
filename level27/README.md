# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit27.html)

# Solution
I used `bandit27-do` executable to open `/etc/bandit_pass/bandit27` as bandit27 user:
```bash
bandit26@bandit:~$ ./bandit27-do cat /etc/bandit_pass/bandit27                                                                                                                             
(password of bandit27)
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX18P5yo5/P6yg1adDQlAnSyljIagMEGBuUDraUdrTt6/XxNf0GMtXncvLuY7hgIYTN/vAH1oBABPLQ==`
  
</details>

After saving the resulted password, log in to bandit27.
