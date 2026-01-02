# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit8.html)

# Solution
For this problem, I used grep to catch the line that contains "millionth" string:
```bash
bandit7@bandit:~$ cat data.txt | grep "millionth"
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX19o25EUcbbJA89Y2aG7qs2in0bOc2KkQ9ryZWSg1HV8odsApzYA3tueWk/utFpSi2sjS8H5pPukHQ==`
  
</details>

After saving the resulted password, log in to bandit8.
