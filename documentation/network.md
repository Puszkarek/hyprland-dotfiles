## How to connect the WIFI with terminal

### Turn on the wifi
1. Run `iwctl`
1. `adapter phy0 set-property Powered on
1. `device wlan0 set-property Powered on`
1. `station wlan0 scan`
1. `station wlan0 get-networks`
1. `station wlan0 connect SSID`

### Connect to the ssid 


## Troubleshooting
- Might need to run `sudo systemctl start iwd` first
