# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit11.html)

# Solution
The problem suggests using the `base64` command which could encode or decode base64 strings.

I used the command ``base64 -d` to decode the content of ``data.txt` file:
```bash
bandit10@bandit:~$ base64 -d data.txt 
The password is ...
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX18tQ1NTh+du1KqWGqf5t9laIKJB5yHEMLkA+uuIgplTHQtGlt43NP0VylqXGvMLyf4e1Tln/27FQA==`
  
</details>

After saving the resulted password, log in to bandit11.
