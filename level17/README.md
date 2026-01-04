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
