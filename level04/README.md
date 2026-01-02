# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit4.html)

# Solution
Enter the indhere directory using the `cd` command:
```bash
bandit3@bandit:~$ cd inhere/
bandit3@bandit:~/inhere$
```
Show all hidden files and directories using `ls -a` command:
```bash
bandit3@bandit:~/inhere$ ls -a
.  ..  ...Hiding-From-You
```
Then show the file using `cat` command:
```bash
bandit3@bandit:~/inhere$ cat ...Hiding-From-You 
```
