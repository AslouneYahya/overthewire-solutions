# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit19.html)

# Solution
For this problem, I had to open a session with bandit18 with another type of terminal, so I can bypass the configuration in `~/.bashrc` file, so I used `-t` argument `to force an interactive session with `/bin/sh` at the end, to open the sh terminal:
```bash
aslouneyahya@cloudshell:~$ ssh -t -p 2220 bandit18@bandit.labs.overthewire.org /bin/sh
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

backend: gibson-0
bandit18@bandit.labs.overthewire.org's password: 
$ cat readme
( password of bandit19)
$
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX1/0lN4/mw5tsKvKEJGQxSt/bCR11bPCFlc3WzlFK0A7r5jujorXHzNRVO5wHhypoo93Vq/lHw26ag==`
  
</details>

After saving the resulted password, log in to bandit19.
