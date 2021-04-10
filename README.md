## General informations

* **Operating System** : Pop!_OS 20.10

* **Shell** : zsh (+ oh-my-zsh)

* **Applications** :
  - Alacritty
  - Vim
  - tmux 3.1
  - VS Code
  - LXD 4.12 (for containers and virtual machines)

## Tips & tricks reminder

* **Improve Firefox performance on Linux (using WebRender)** :
  
  - *gfx.webrender.all* => **true**
  - *layers.acceleration.force-enabled* => **true**

* **Edit Flatpak apps desktop files** : `$HOME/.local/share/flatpak/exports/share/applications/com.spotify.Client.desktop`

* **Enforce SRGB coulour profiles on Electron apps**

  - Edit desktop files and add `--force-color-profile=srgb` to the exec line.
  
  ```INI
  Exec=/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=discord com.discordapp.Discord --force-color-profile=srgb
  ```
* **Enable GPU acceleration in VS Code**

  Edit application desktop file :
  
  ```INI
  Exec=/usr/share/code/code --no-sandbox --unity-launch %F --enable-gpu-rasterization --enable-native-gpu-memory-buffers
  ```

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

