if status is-interactive
    # Commands to run in interactive sessions can go here
end

# If running from tty1 start sway
set TTY1 (tty)
[ "$TTY1" = "/dev/tty1" ] && exec dbus-run-session sway --unsupported-gpu

fastfetch