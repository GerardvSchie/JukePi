#!/bin/bash
sudo systemctl enable mopidy
sudo systemctl stop mopidy

# Copy over configurations
sudo cp ~/App/JukePi/Configs/mopidy-service.conf /etc/mopidy/mopidy.conf
sudo cp ~/App/JukePi/Configs/default.pa /etc/pulse/default.pa

# Restart pulseaudio and mopidy
pulseaudio --kill
pulseaudio --start
export GST_DEBUG=3
export GST_DEBUG_FILE=/home/gerard/gstreamer.log
sudo systemctl start mopidy
sudo systemctl status mopidy
# sudo journalctl -u mopidy -f

# sh ~/App/JukePi/Build/start-service.sh && sudo journalctl -u mopidy -f


