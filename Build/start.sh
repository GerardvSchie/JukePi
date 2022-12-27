#!/bin/bash

sudo systemctl stop mopidy

cp ~/App/JukePi/Configs/mopidy.conf ~/.config/mopidy/mopidy.conf
mopidy

