## General informations

* **Operating System** : Windows 10 (20H2) + Ubuntu 20.04.1 on WSL2

* **Hardware configuration** :
  - CPU : Ryzen 7 3700X
  - RAM : 32GB DDR4
  - GPU : RTX 2070 Super
  - SSD : 2 x 1TB

* **Shell** : 
  - WSL2 : zsh (+ oh-my-zsh)
  - Windows : PowerShell Core 7

* **Applications** :
  - Windows Terminal (v1.4.3243.0)
  - Vim
    * Plugin manager : https://github.com/junegunn/vim-plug
  - Docker 20.10.2
  - LXD 4.9
  - Multipass 1.5.0

## WSL2 Memory Reclaim

By default, WSL2 use dynamic memory allocation to limit the memory it can use. But with Linux caches, the value doesn't decrease as much as expected during an idle period. This script allow to drop caches periodically to further reduce used memory (every 15 min).

After installing the script and the units (timer and service) :

```
$ systemctl daemon-reload
```

Once done, enable and start the timer :

```
$ systemctl enable --now mem-reclaim.timer
```