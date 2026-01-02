# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit1.html)

# Solution
First, I checked the list of files in the home directory using `ls` command:
```bash
bandit0@bandit:~$ ls
readme
```
Then, I used `cat` command to show the readme file:
```bash
bandit0@bandit:~$ cat readme 
Congratulations on your first steps into the bandit game!!
Please make sure you have read the rules at https://overthewire.org/rules/
If you are following a course, workshop, walkthrough or other educational activity,
please inform the instructor about the rules as well and encourage them to
contribute to the OverTheWire community so we can keep these games free!

The password you are looking for is:
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX1+EBkLemj5mnF7FP4fNC9y4CCilAxQ3x/f1BCibDTbXnInAN6k7LStYK24dSORdnunDgUDhsplkUA==`
  
</details>

Save the password that you'll get, so you can use it in later level.

In the next step, you should logout from bandit0 using `exit` command:
```bash
aslouneyahya@cloudshell:~$ ssh -p 2220 bandit1@bandit.labs.overthewire.org
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

backend: gibson-1
bandit1@bandit.labs.overthewire.org's password:
```
Paste the password that you saved, then you'll see `bandit1@bandit:~$`, which means that you're logged in succefully.

# Security Note
To follow security best practices, all passwords/flags in this repository are encrypted.
