# Ubuntu with i3-gaps

### Create a service

create bato.service

```sh
sudo vim /lib/systemd/system/bato.service
sudo ln -s bato.service /etc/systemd/system/bato.service
```

# Xubuntu with i3-wm

### Monitors

- xrandr, it is the command manager
- arandr, it is the graphic manager

```sh
sudo apt-get install arandr
```

### Bluetooth

```sh
blueman-manager
```

### Record gifs

```bash
sudo apt-get install ffmpeg
```

ffmpeg -ss 00:00:00 -i input_file.mp4 -to 00:00:00 -r 10 -vf scale=200:-1 output_file.gif

### fonts

[Space Mono](https://fonts.google.com/specimen/Space+Mono)
[powerline fonts](https://github.com/powerline/fonts)

### lxappearence

Change the font system, we can open it with dmenu: lxappearence

```sh
Edit the gtk-font-name="System San Francisco Display 13"
~/.gtkrc-2.0

Open the gtk-3 config and edit gtk-font-name="System San Francisco Display 13"
~/.config/.gtk-3.0/settings.ini
```

### compton

This allow us get opacity, I'm using it to get transitions when I change between workspaces.

```sh
sudo apt-get install compton
```

you can use it in i3 config like this:

```sh
exec compton -f
```

### PulseAudio Volume Control Graphical Utility

```
sudo apt install pavucontrol
```

### tmux

I have tmux on /usr/local/bin/tmux because I compiled it from github.

[restart tmux with tmux-resurrect and tmux-continuum](https://www.rockyourcode.com/how-to-start-and-restore-tmux-sessions-automatically-with-tmux-continuum/)

### enable italic font into tmux

[set -g default-terminal "xterm-256color-italic"](https://hi.imnhan.com/posts/enable-italic-text-vim-tmux-gnome-terminal/)

### Troubleshooting

- I had a problem with the pc audio, it was related when I connect/disconnect
  the headphones but I solved it running this following command.

  ```sh
  alsactl restore
  ```
