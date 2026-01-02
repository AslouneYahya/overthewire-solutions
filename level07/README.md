# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit7.html)

# Solution
I just discovered the `find` command, it could also work on previous problems without using a loop, I used `cd /` to change directory to root level, the I executed the following:
```bash
bandit6@bandit:/$ find -size 33c -group "bandit6" -user "bandit7"
...
find: ‘./var/lib/private’: Permission denied
find: ‘./var/lib/ubuntu-advantage/apt-esm/var/lib/apt/lists/partial’: Permission denied
./var/lib/dpkg/info/bandit7.password
find: ‘./var/lib/amazon’: Permission denied
find: ‘./var/crash’: Permission denied
...
bandit6@bandit:/$ cat ./var/lib/dpkg/info/bandit7.password
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX19cN5r7BCr9E+8rbGnoNdFNJiaZsKuEUbI5xhZrAlunHW6xDZHf31V9mMObgw70N15E+ZNIMAyBow==`
  
</details>

After saving the resulted password, log in to bandit7.
