# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit15.html)

# Solution
From the previous level, the password resides in `/etc/bandit_pass/bandit14`:
```bash
bandit14@bandit:~$ cat /etc/bandit_pass/bandit14
...
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX1+x/WeXW0EDS7xk+trpJOU+/BlbVN9VImLZ6PBdpoOqA6SHWlD61ODZtXB/6Kb8ZSdxIpaznnUFBA==`
  
</details>
I used `telnet` command to connect to local host, then I submitted the password of bandit14:

```bash
bandit14@bandit:~$ telnet localhost 30000
Trying 127.0.0.1...
Connected to localhost.
Escape character is '^]'.
(password of bandit14)
Correct!
(password of bandit15)

Connection closed by foreign host.
```
<details>
  <summary>Encrypted password:</summary>
  
  ``U2FsdGVkX1/Y3LhplHOpu59iUJ8Q8h6+EFZdkk4pdGp6HE1q5K7nibRy3lNcUw4HlF75Z3OTXHOWr75eab1PwA==
  
</details>

After saving the resulted password, log in to bandit15.
