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

### Troubleshooting

- I had a problem with the pc audio, it was related when I connect/disconnect
  the headphones but I solved it running this following command.

  ```sh
  alsactl restore
  ```
