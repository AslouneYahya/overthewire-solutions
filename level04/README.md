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
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX19RcvrQkrqlnB8092wTICdb0eLYCfwRD1a0ZDVeiL4JG4b7haVpx7CdyS2FSRUOj7u/U3QAVqKJ8w==`
  
</details>

After saving the resulted password, log in to bandit4.
