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
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX1+UhO1RsJZ4UjgR5ez1p1j0Tdz7nqnkpLQzYQwwEbn4wDCGgw60ihhAxdwTOmhSHKHEJb82En7wOg==`
  
</details>

After saving the resulted password, log in to bandit16.
