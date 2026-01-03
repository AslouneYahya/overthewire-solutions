# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit9.html)

# Solution
For this problem, I dicovered the uniq command which is suggested in the problem expression.

I piped the content of `data.txt` file with `sort` command, then I piped the output with `uniq -u` to show only the lines with only one occurence.
```bash
bandit8@bandit:~$ cat data.txt | sort | uniq -u
...
```
