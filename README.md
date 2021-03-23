## General informations

* **Operating System** : Windows 10 20H2 + WSL2 (Fedora)

* **Shell** : zsh (+ oh-my-zsh)

* **Applications** :
  - Windows Terminal 1.6.10571.0
  - Vim
  - tmux 3.1

## Tips & tricks reminder

* **WSL2 aggressive memory reclaim**

  By default, WSL2 use dynamic memory allocation to limit the memory it can use. But with Linux caches, the value doesn't decrease as much as expected during an idle period. This script allow to drop caches periodically to further reduce used memory (every 15 min).

  After installing the script and the units (timer and service) :

  ```
  $ systemctl daemon-reload
  ```

  Once done, enable and start the timer :

  ```
  $ systemctl enable --now mem-reclaim.timer
  ```

  It should appear as active timer :

  ```
  $ systemctl list-timers
  NEXT                        LEFT          LAST                        PASSED       UNIT                         ACTIVATES
  Fri 2021-01-08 20:30:00 CET 3min 26s left Fri 2021-01-08 20:25:13 CET 1min 19s ago mem-reclaim.timer            mem-reclaim.service
  ```

* **Improve Firefox performance on Linux (using WebRender)** :
  
  - *gfx.webrender.all* => **true**
  - *layers.acceleration.force-enabled* => **true**