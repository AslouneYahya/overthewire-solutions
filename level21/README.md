# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit21.html)

# Solution
For this, we should use `tmux` command to create two separate sessions, after it execution, we move to a new session, by clicking `CTRL+b, "` the two sessions split horizontally:

```bash
bandit20@bandit:~$ 



[3] 0:bash*                                                                                                                                                      "gibson-1" 14:45 04-Jan-26
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
bandit20@bandit:~$
```
The first session will start listening on port 1234, and the second will establish a connection with it using `nc` and `./suconnect` commands (you can switch control between sessions by using `CTRL+b, Up Arrow` or `CTRL+b, Down Arrow`:

```bash
bandit20@bandit:~$ nc -l 1234



[3] 0:bash*                                                                                                                                                      "gibson-1" 14:49 04-Jan-26
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
bandit20@bandit:~$ ./suconnect 1234
```
Then paste the bandit20 password in first session, and you'll get the bandit21 password in next line thanks to the second session running script:

```bash
bandit20@bandit:~$ nc -l 1234
(password bandit20)
(password bandit21)
bandit20@bandit:~$ 



[2] 0:bash*                                                                                                                                                      "gibson-1" 14:49 04-Jan-26
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
bandit20@bandit:~$ ./suconnect 1234
Read: (password bandit20)
Password matches, sending next password
```

<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX1+vwas57liQYks5r8wTGppbNDMF8dudroAeEKh21l9w61Y3KiodCX2yxLH1yFFlKSNFu1moM4a9SA==`
  
</details>

After saving the resulted password, log in to bandit21.





