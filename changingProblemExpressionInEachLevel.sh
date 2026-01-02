#!/bin/bash
for i in {0..9}
do
	sed -i '1s/.*/# Problem Link/' level0$i/README.md
	sed -i "1a [Level Page](https://overthewire.org/wargames/bandit/bandit$i.html" level0$i/README.md
done

for i in {10..34}
do
	sed -i '1s/.*/# Problem Link/' level$i/README.md
	sed -i "1a [Level Page](https://overthewire.org/wargames/bandit/bandit$i.html" level$i/README.md
done
