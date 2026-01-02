# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit2.html)

# Solution
Executing the `ls` command, will result:
```bash
bandit1@bandit:~$ ls
-
```
I tried `cat -` command but resulted a blank output, then I found a guide to open dashed files in this [page](https://stackoverflow.com/questions/42187323/how-to-open-a-dashed-filename-using-terminal)
The solution is the following command:
```bash
bandit1@bandit:~$ cat ./-
```
Resulting the password:
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX1/rX65YNasFgInnvVc5HbmUyvLdnXwVerADYntB4liK/nGiYdGFnxQyejMzNY673OwrTVL80NT8Mw==`
  
</details>

After saving the resulted password, and following the steps from the previous level, log in to bandit2.
