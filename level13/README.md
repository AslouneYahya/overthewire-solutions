# Problem Link
[Level Page](https://overthewire.org/wargames/bandit/bandit13.html)

# Solution
This was the longest problem to solve so far, we have a hex temp file that has been compressed many times, and we don't have the permission to write new files in the `/home/bandit12/` directory.

I created a temporary directory in `/temp` directory using `mktemp` command, and changed my directory to the new temporary one:

```bash
bandit12@bandit:~$ cd $(mktemp -d)
bandit12@bandit:/tmp/tmp.F1...$
```
Then, I copied the `data.txt` to my new directory:
```bash
bandit12@bandit:/tmp/tmp.F1...$ cp /home/bandit12/data.txt .
bandit12@bandit:/tmp/tmp.F1...$ ls
data.txt
```
I reverted the hex temp file to its binary form:
```bash
bandit12@bandit:/tmp/tmp.F1...$ xxd -r data.txt > data
bandit12@bandit:/tmp/tmp.F1...$ cat data
z4 ...
```
Then comes the most interesting part, I check the type of the file using `file` command, then append the apropriate extension for the compressed file, to decompress it:

```bash
bandit12@bandit:/tmp/tmp.F1...$ file data
data: gzip compressed data, was "data2.bin", last modified: Tue Oct 14 09:26:06 2025, max compression, from Unix, original size modulo 2^32 564
bandit12@bandit:/tmp/tmp.F1...$ mv data data.gz
bandit12@bandit:/tmp/tmp.F1...$ gzip -d data.gz
bandit12@bandit:/tmp/tmp.F1...$ file data
data: bzip2 compressed data, block size = 900k
bandit12@bandit:/tmp/tmp.F1...$ mv data data.bz2
bandit12@bandit:/tmp/tmp.F1...$ bzip2 -d data.bz2  
bandit12@bandit:/tmp/tmp.F1...$ file data
data: gzip compressed data, was "data4.bin", last modified: Tue Oct 14 09:26:06 2025, max compression, from Unix, original size modulo 2^32 20480
bandit12@bandit:/tmp/tmp.F1...$ mv data data.gz
bandit12@bandit:/tmp/tmp.F1...$ gzip -d data.gz  
bandit12@bandit:/tmp/tmp.F1...$ file data
data: POSIX tar archive (GNU)
bandit12@bandit:/tmp/tmp.F1...$ mv data data.tar
bandit12@bandit:/tmp/tmp.F1...$ tar -xvf data.tar 
data5.bin
bandit12@bandit:/tmp/tmp.F1...$ file data5.bin 
data5.bin: POSIX tar archive (GNU)
bandit12@bandit:/tmp/tmp.F1...$ mv data5.bin data5.bin.tar
bandit12@bandit:/tmp/tmp.F1...$ tar -xvf data5.bin.tar 
data6.bin
bandit12@bandit:/tmp/tmp.F1...$ file data6.bin 
data6.bin: bzip2 compressed data, block size = 900k
bandit12@bandit:/tmp/tmp.F1...$ mv data6.bin data6.bin.bz2
bandit12@bandit:/tmp/tmp.F1...$ bzip2 data6.bin.bz2
bzip2: Input file data6.bin.bz2 already has .bz2 suffix.
bandit12@bandit:/tmp/tmp.F1...$ bzip2 -d data6.bin.bz2
bandit12@bandit:/tmp/tmp.F1...$ file data6.bin 
data6.bin: POSIX tar archive (GNU)
bandit12@bandit:/tmp/tmp.F1...$ mv data6.bin data6.bin.tar
bandit12@bandit:/tmp/tmp.F1...$ tar -xvf data6.bin.tar 
data8.bin
bandit12@bandit:/tmp/tmp.F1...$ file data8.bin
data8.bin: gzip compressed data, was "data9.bin", last modified: Tue Oct 14 09:26:06 2025, max compression, from Unix, original size modulo 2^32 49
bandit12@bandit:/tmp/tmp.F1...$ mv data8.bin data8.bin.gz
bandit12@bandit:/tmp/tmp.F1...$ gzip -d data8.bin.gz
bandit12@bandit:/tmp/tmp.F1...$ cat data8.bin 
The password is ...
```
<details>
  <summary>Encrypted password:</summary>
  
  `U2FsdGVkX18NU2P8A1OqvIcpu05DuxieUOsScMG4irDHwedvYJZwLJy0Ci7Dt2ivWJQ23Gb0Ss+zhqFAR06Vlg==`
  
</details>

After saving the resulted password, log in to bandit13.
