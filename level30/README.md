# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit30.html)

# Solution
For this one, I used every git command that I know to inspect that repository, and I didn't find anything, so I looked for more commands, to show more hidden details about my repository, and I found a command `git show-ref` if shows if there's any hidden braches in the remote server:

```bash
aslouneyahya@cloudshell:~/repo$ git show-ref
8ff4dfab0a869265c3cd59719c5101098e2279ed refs/heads/list
8ff4dfab0a869265c3cd59719c5101098e2279ed refs/heads/master
8ff4dfab0a869265c3cd59719c5101098e2279ed refs/remotes/origin/HEAD
e50e6cc6be6bc718f834b1584971b1039e4e87db refs/remotes/origin/dev
8ff4dfab0a869265c3cd59719c5101098e2279ed refs/remotes/origin/master
5149c5801e1372912639e5b693cb3f2dae46be1c refs/remotes/origin/sploits-dev
```
I inspected all the branches, and I found the password in `refs/remotes/origin/dev` branch:

```bash
aslouneyahya@cloudshell:~/repo$ git show e50e6cc6be6bc718f834b1584971b1039e4e87db
commit e50e6cc6be6bc718f834b1584971b1039e4e87db (origin/dev)
Author: Morla Porla <morla@overthewire.org>
...
-- password: <no passwords in production!>
+- password: (password of bandit30)
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX19AsMxLIteKay4/rHzOE4XNguK/kOfnP75uM4R6KLjNNcAbZl6Oz44ZM2Fit50BTw6YfnYTagc9pQ=`
  
</details>

After saving the resulted password, log in to bandit30.
