# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit16.html)

# Solution
For this problem, I used `s_client` cli tool, which plays the role of `telnet` but for ssl/tls connections, then I pasted the password of bandit15:
```bash
bandit15@bandit:~$ openssl s_client -connect localhost:30001
CONNECTED(00000003)
...
read R BLOCK
(bandit15 password)
Correct!
(bandit16 password)
closed
```
