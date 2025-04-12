function toggle_audio
    # Get the current default sink
    set current_sink (pactl list short sinks | grep RUNNING | awk '{print $1}')
    
    # Get the analog and HDMI sink IDs
    set analog_sink (pactl list short sinks | grep analog | awk '{print $1}')
    set hdmi_sink (pactl list short sinks | grep hdmi | awk '{print $1}')
    
    if test "$current_sink" = "$analog_sink"
        # Currently on analog, switch to HDMI
        pactl set-default-sink $hdmi_sink
        pactl set-sink-volume @DEFAULT_SINK@ 100%
        echo "Switched to HDMI output (Volume: 100%)"
    else
        # Currently on HDMI or other, switch to analog
        pactl set-default-sink $analog_sink
        pactl set-sink-volume @DEFAULT_SINK@ 70%
        echo "Switched to analog output (Volume: 70%)"
    end
end
