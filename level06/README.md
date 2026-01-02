# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit6.html)

# Solution
I spent too much time using ls -l, without -a argument, which didn't print the desired file, I piped the ls with grep, so I can get find it.
```bash
bandit5@bandit:~/inhere$ counter() { for i in {00..19}; do echo "Directory maybehere$i"; ls -al ./maybehere$i | grep "1033"; done; }
bandit5@bandit:~/inhere$ counter
...
Directory maybehere06
Directory maybehere07
-rw-r-----  1 root bandit5 1033 Oct 14 09:26 .file2
Directory maybehere08
Directory maybehere09
...
```
Then enter the maybehere07 directory and read the `.file2` to get the password as below:
```bash
bandit5@bandit:~/inhere$ cd maybehere07
bandit5@bandit:~/inhere/maybehere07$ cat .file2
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX19EnFaCcN/6oJYP0O5lN1RRMCOfxgk3B4fdGASFDmdOresL6AF9oOIvXmDSIzokErp0lhhB+sJraw==`
  
</details>

After saving the resulted password, log in to bandit6.
