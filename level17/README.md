# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit17.html)

# Solution
For this problem, I used `nmap` command to scan open ports:
```bash
bandit16@bandit:~$ nmap -p 31000-32000 localhost
Starting Nmap 7.94SVN ( https://nmap.org ) at 2026-01-04 09:12 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.00012s latency).
Not shown: 996 closed tcp ports (conn-refused)
PORT      STATE SERVICE
31046/tcp open  unknown
31518/tcp open  unknown
31691/tcp open  unknown
31790/tcp open  unknown
31960/tcp open  unknown

Nmap done: 1 IP address (1 host up) scanned in 0.06 seconds
```
Then I tried to connect to each port, to see the one who'll give me the private key, and it was port 31790, I used the command `openssl s_client` with `-quiet` arguments, so the localhost reads the password as raw data:
```bash
bandit16@bandit:~$ openssl s_client -connect localhost:31790 -quiet
Can't use SSL_get_servername
depth=0 CN = SnakeOil
verify error:num=18:self-signed certificate
verify return:1
depth=0 CN = SnakeOil
verify return:1
(password of bandit16)
Correct!
-----BEGIN RSA PRIVATE KEY-----
M ...
...
... Y=
-----END RSA PRIVATE KEY-----
```
<details>
  <summary>Encrypted password:</summary>
  
  `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
qonVsUtdA+Ck3QgaBHaVFA==`
  
</details>

After saving the resulted key, log in to bandit17.
