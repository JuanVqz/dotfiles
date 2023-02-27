# Ubuntu with i3-gaps

# Uninstall with dpkg

Search package with

```bash
dpkg -l | grep opera
```

Uninstall package

```bash
dpkg -P opera-stable
```

## Monitors

- xrandr, it is the command manager
- arandr, it is the graphic manager

```sh
sudo apt-get install arandr
```

## Bluetooth

```sh
blueman-manager
```

## Record gifs

```bash
sudo apt-get install ffmpeg
```

ffmpeg -ss 00:00:00 -i input_file.mp4 -to 00:00:00 -r 10 -vf scale=200:-1 output_file.gif

## fonts

[Space Mono](https://fonts.google.com/specimen/Space+Mono)
[powerline fonts](https://github.com/powerline/fonts)
Victor Mono

### PulseAudio Volume Control Graphical Utility

```
sudo apt install pavucontrol
```

## tmux

I have tmux on /usr/local/bin/tmux because I compiled it from github.

[restart tmux with tmux-resurrect and tmux-continuum](https://www.rockyourcode.com/how-to-start-and-restore-tmux-sessions-automatically-with-tmux-continuum/)

### enabling italic font into tmux

1. copy xterm-256color-italic.terminfo
2. tic xterm-256color...
3. set `export TERM=xterm-256color` in the .zshrc file

```bash
cp xterm-256color-italic.terminfo ~/
tic xterm-256color-italic.terminfo
```

For Mac and Ubuntu

```tmux
set -ga terminal-overrides ",xterm-256color:Tc"
set -g default-terminal "xterm-256color-italic"
```

> Resources
> [set -g default-terminal "xterm-256color-italic"](https://hi.imnhan.com/posts/enable-italic-text-vim-tmux-gnome-terminal/) > [Enablig Italics in Vim and tmux](https://rsapkf.xyz/blog/enabling-italics-vim-tmux)

### Troubleshooting

- I had a problem with the pc audio, it was related when I connect/disconnect
  the headphones but I solved it running this following command.

  ```sh
  alsactl restore
  ```
