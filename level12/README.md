# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit12.html)

# Solution
The problem seggests using the `tr` command which translates the input to another sequence.

I piped the output of the `cat` command to `tr 'A-Za-z' 'N-ZA-Mn-za-M'` which takes any character from A to Z, or a to n, then replace it with its rot13.

```bash
bandit11@bandit:~$ cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
The password is ...
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX19ben4oRtnx6ZLjEYOfwivqv39xOdB453tZkIXnkTJEhuqkVrxPZ/4vlpGPuZ0Gfq9Pu01FHITwVg==`
  
</details>

After saving the resulted password, log in to bandit12.
