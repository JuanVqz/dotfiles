## Kill port

```
sudo kill -9 `sudo lsof -t -i:3000`
```

> where `3000` is the port


## Bluetooth (Blueman)

Status
```
rfkill list
```

Running the block and unblock command the bluetooth started working again.
```
rfkill block bluetooth
```

```
rfkill unblock bluetooth
```
