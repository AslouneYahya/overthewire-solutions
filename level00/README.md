# Problem Link:
Level Page: https://overthewire.org/wargames/bandit/bandit0.html

# Solution
For this problem, I tried to ssh to bandit0 using my school wifi, but for some port blocking, I couldn't. So I found an alternative to use. https://shell.cloud.google.com/, this shell provided by google, is free to use, and it's working because the shell doesn't depend on the configuration of your local network, but it relies on the provider of the shell.

First, you type the command `ssh -p 2220 bandit0@bandit.labs.overthewire.org`: 
```bash
aslouneyahya@cloudshell:~$ ssh -p 2220 bandit0@bandit.labs.overthewire.org
                         _                     _ _ _ 
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

backend: gibson-1
bandit0@bandit.labs.overthewire.org's password:
```
Here you type the password which is `bandit0`, then you should see `bandit0@bandit:~$` which means that you authentified succefully. 

