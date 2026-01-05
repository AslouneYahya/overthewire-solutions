# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit31.html)

# Solution
The solution for this is similar to the previous one:

```bash
aslouneyahya@cloudshell:~/repo$ git show-ref
d604df2303c973b8e0565c60e4c29d3801445299 refs/heads/master
d604df2303c973b8e0565c60e4c29d3801445299 refs/remotes/origin/HEAD
d604df2303c973b8e0565c60e4c29d3801445299 refs/remotes/origin/master
84368f3a7ee06ac993ed579e34b8bd144afad351 refs/tags/secret
aslouneyahya@cloudshell:~/repo$ git show 84368f3a7ee06ac993ed579e34b8bd144afad351
(password of bandit31)
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX1/btXjEOr8KyNiENGWJz8uGmg8Fc5xgMumoHQc2vMd+fleZKPUiIbxVMjISJ0ZPmQ52yQ9u/igBlQ==`
  
</details>

After saving the resulted password, log in to bandit30.
