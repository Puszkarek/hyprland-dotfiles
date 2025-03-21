## How to control audio with pactl

### Volume
Run `pactl set-sink-volume \@DEFAULT_SINK@ 100%`, you can also use `+5%`

### Output
Run `pactl list short sinks` to get all the outputs available, then run `pactl set-default-sink 0` (0 is the first list item of the previous command) 

### Troubleshooting
- You can run `pactl get-default-sink` to get the current source