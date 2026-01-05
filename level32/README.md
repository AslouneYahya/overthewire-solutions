# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit32.html)

# Solution
Following same steps as before:

```bash
aslouneyahya@cloudshell:~/repo$ cat README.md 
This time your task is to push a file to the remote repository.

Details:
    File name: key.txt
    Content: 'May I come in?'
    Branch: master
```

When I tried to add key.txt file, I couldn't, because it it was ignored by one of `.gitignore` files, so I used `-f` flag to force its addition, then I committed the changes, and I pushed to remote repository:

```bash
aslouneyahya@cloudshell:~/repo$ git log
commit 64e7f8e9aa48ae40584d971c3cc05dee0b5638f9 (HEAD -> master, origin/master, origin/HEAD)
Author: Ben Dover <noone@overthewire.org>
Date:   Tue Oct 14 09:26:29 2025 +0000

    initial commit
aslouneyahya@cloudshell:~/repo$ git config --global user.email "noone@overthewire.org"
aslouneyahya@cloudshell:~/repo$ git config --global user.name "Ben Dover"
aslouneyahya@cloudshell:~/repo$ vi key.txt
aslouneyahya@cloudshell:~/repo$ git add key.txt 
The following paths are ignored by one of your .gitignore files:
key.txt
hint: Use -f if you really want to add them.
hint: Turn this message off by running
hint: "git config advice.addIgnoredFile false"
aslouneyahya@cloudshell:~/repo$ git add -f key.txt
aslouneyahya@cloudshell:~/repo$ git commit -m "add key.txt file"
...
remote: 
remote: Well done! Here is the password for the next level:
remote: (password of bandit32) 
remote: 
...
```

<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX18WLn2DLa+gBk0WlXtqJMtSk5pA5q8Mmy4G6lHkFedCDiRLI+izawf99deUSYdeFSen4DqjC7pODw==`
  
</details>

After saving the resulted password, log in to bandit32.



