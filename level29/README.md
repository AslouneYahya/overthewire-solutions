# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit29.html)

# Solution
Following same steps as previous problem, I entered `repo` directory, and I opened `README.md` file:

```bash
aslouneyahya@cloudshell:~/repo$ cat README.md 
# Bandit Notes
Some notes for level29 of bandit.

## credentials

- username: bandit29
- password: xxxxxxxxxx
```

I checked the history of commits, the I used `git show` to second commit, so I can see what changed, nd I found that in this commit, they replaced `-- password: <TBD>` by `+- password: (password of bandit29)` in `README.md` file:

```bandit
aslouneyahya@cloudshell:~/repo$ git log --oneline
b5ed4b5 (HEAD -> master, origin/master, origin/HEAD) fix info leak
8b7c651 add missing data
6d8e5e6 initial commit of README.md
aslouneyahya@cloudshell:~/repo$ git show 8b7c651
commit 8b7c651b37ce7a94633b7b7b7c980ded19a16e4f
...
-- password: <TBD>
+- password: (password of bandit29)
```

