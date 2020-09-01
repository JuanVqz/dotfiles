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

### fonts

[Space Mono](https://fonts.google.com/specimen/Space+Mono)


### Troubleshooting

- I had a problem with the pc audio, it was related when I connect/disconnect
  the headphones but I solved it running this following command.

  ```sh
  alsactl restore
  ```
