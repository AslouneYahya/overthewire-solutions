# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit22.html)

# Solution
For this problem, I moved to ``/etc/cron.d` directory to see list of cronjobs, then I used `cat` command to see the content of `cronjob_bandit22`:

```bash
bandit21@bandit:~$ cd /etc/cron.d
bandit21@bandit:/etc/cron.d$ ls
clean_tmp         cronjob_bandit22  cronjob_bandit23  cronjob_bandit24  
bandit21@bandit:/etc/cron.d$ cat cronjob_bandit22
@reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
* * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
```
The cronjob executes the script `/usr/bin/cronjob_bandit22.sh`, I used `cat` command to show its content:

```bash
bandit21@bandit:/etc/cron.d$ cat /usr/bin/cronjob_bandit22.sh
#!/bin/bash
chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
```
From the content of this script, it writes the content of `/etc/bandit_pass/bandit22` to `/tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv`, so all we have to do is show the content of `/tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv` temporary file, to have the password of bandit22.

```bash
bandit21@bandit:/etc/cron.d$ cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
(password of bandit22)
```
