# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit6.html)

# Solution
I spent too much time using ls -l, without -a argument, which didn't print the desired file, I piped the ls with grep, so I can get the exact desired file.
```bash
bandit5@bandit:~/inhere$ counter() { for i in {00..19}; do echo "Directory maybehere$i"; ls -al ./maybehere$i | grep "1033"; done; }
bandit5@bandit:~/inhere$ counter
Directory maybehere00
Directory maybehere01
Directory maybehere02
Directory maybehere03
Directory maybehere04
Directory maybehere05
Directory maybehere06
Directory maybehere07
-rw-r-----  1 root bandit5 1033 Oct 14 09:26 .file2
Directory maybehere08
Directory maybehere09
Directory maybehere10
Directory maybehere11
Directory maybehere12
Directory maybehere13
Directory maybehere14
Directory maybehere15
Directory maybehere16
Directory maybehere17
Directory maybehere18
Directory maybehere19
```
Then enter the maybehere07 directory and read the `.file2` to get the password as below:
```bash
bandit5@bandit:~/inhere$ cd maybehere07
bandit5@bandit:~/inhere/maybehere07$ cat .file2
```
