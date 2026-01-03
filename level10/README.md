# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit10.html)

# Solution
For this problem, I searched for the `strings` command, suggested in the problem, it prints human-redable sequences from files.

I used `strings` command to extract human-readable sequences, then I piped it with `grep "^="` to only print the sequences that starts with "=" character.

```bash
bandit9@bandit:~$ strings data.txt | grep "^="
========== the
========== password
=LGT
========== ...
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX19QMqivjoq9Z3pPcI7XhjoiisA+jOAQ8UrtJCSoEKSb0pOQEWOgVPjEvuNW0RfsnyFE9ZNofttgMA==`
  
</details>

After saving the resulted password, log in to bandit10.
