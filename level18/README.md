# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit18.html)

# Solution
I used the ``diff` command to show the diiferences between ``password.new` and `password.old` files:
```bash
bandit17@bandit:~$ ls
passwords.new  passwords.old
bandit17@bandit:~$ diff -u passwords.new passwords.old 
--- passwords.new       2025-10-14 09:26:06.654505233 +0000
+++ passwords.old       2025-10-14 09:26:06.650645470 +0000
@@ -39,7 +39,7 @@
 ...
 hnGGKfEtEGm7NwcHFmxZzubaJ5LrXbbR
-x ...
+B ...
 87QCHMmaVMEz51K7aJvhbOqSR3OzdNKg
 ...
```
The password is the line after minus.
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX19o4wybzVzz/j7tsbu4d0ncadIZ3Q6mvKMksfqek2qEiDpaWneupWhnlVu3n2jQobiXrECfYMJFUA==`
  
</details>
