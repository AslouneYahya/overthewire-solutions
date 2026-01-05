# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit33.html)

# Solution
When I access to bandit33, eveything that I type turns to uppercase, but it ignores numbers and symbols, when I type $0, its translated to the program currently runnig, which is `sh` in this case, which made me escape THE UPPERCASE SHELL, and then, opening the `/etc/bandit_pass/bandit33` file:

```bash
WELCOME TO THE UPPERCASE SHELL
>> $0
$ ./uppershell /etc/bandit_pass/bandit33
WELCOME TO THE UPPERCASE SHELL
>> $0
$ cat /etc/bandit_pass/bandit33
(password of bandit33) 
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX18Cm/iBrkejY7kqhR/gAEeCFh7HsGoxW16m0L+zWkcWTUgMcD5U4AUDP9PAjoWZzb1Y9J3ktQc/fQ==`
  
</details>

After saving the resulted password, log in to bandit33.
