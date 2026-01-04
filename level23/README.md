# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit23.html)

# Solution
Following the same steps from previous level, I used `cat` command to show content of `/usr/bin/cronjob_bandit23.sh`

```bash
bandit22@bandit:/etc/cron.d$ cat /usr/bin/cronjob_bandit23.sh
#!/bin/bash

myname=$(whoami)
mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)

echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"

cat /etc/bandit_pass/$myname > /tmp/$mytarget
```

By running the `whoami` command, then `echo I am user bandit23 | md5sum | cut -d ' ' -f 1` I obtained the location of temp file, that this script paste the password of bandit23 into:

```bash
bandit22@bandit:/etc/cron.d$ whoami
bandit22
bandit22@bandit:/etc/cron.d$ echo I am user bandit23 | md5sum | cut -d ' ' -f 1
8ca319486bfbbc3663ea0fbe81326349
bandit22@bandit:/etc/cron.d$ cat /tmp/8ca319486bfbbc3663ea0fbe81326349
(password of bandit23)
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX1+1i7JhGZ8rkR0F2hX0gAaWlnBLL25uqaGz4A68bYtV8Egn3/sOktnLooWvbBbw2QoTLxajHLsXSA==`
  
</details>

After saving the resulted password, log in to bandit23.
