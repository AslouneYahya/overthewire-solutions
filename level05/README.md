# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit5.html)

# Solution
In the inhere directory, I couldn't create a script due to permission issues, so I used counter function to loop through the directory to get the content of each file:
```bash
bandit4@bandit:~/inhere$ counter (){ for i in {00..09}; do echo "Showing the content of -file$i"; cat ./-file$i; echo ""; done; }
```
After executing the function, you'll see the following result:
```bash
bandit4@bandit:~/inhere$ counter
Showing the content of -file00

I V`nѳ*^7؅cO
Showing the content of -file01
qYdCF+
...
```
I found the password in the seventh file.
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX19i5s9pmXGWehHOCYmk264VV9zTNXAOH3umyxo5cv6BAC5NG0isqY8PE155C2goKt7QDJwX43mfBA==`
  
</details>

After saving the resulted password, log in to bandit5.
