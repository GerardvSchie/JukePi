# JukePi

We use [Mopidy](https://mopidy.com) to run the audio from a central spot.
Selected since it is python based, can run as a service and is still well maintained.
It is also not limited to run on RaspBerry PI, so it can be developed from a computer.
And there are many [extensions](https://mopidy.com/ext/)!

Also, there are web based clients which ties it all together which we can use as initial version.

## Installation

Packages:
* [Mopidy](https://docs.mopidy.com/en/latest/installation/)
* [Mopidy-YouTube](https://mopidy.com/ext/youtube/)
* [Mopidy-Local](https://mopidy.com/ext/local/)
* [yt-dlp](https://pypi.org/project/yt-dlp/)
* [Mopidy-Iris](https://mopidy.com/ext/iris/)
* [Mopidy-YTMusic](https://github.com/OzymandiasTheGreat/mopidy-ytmusic)

A few commands:
```
pip install mopidy
pip install Mopidy-YouTube
pip install Mopidy-Local
pip install yt-dlp
apt install Mopidy-Iris
pip install ytmusicapi
pip install Mopidy-YTMusic
```

Setup ytmusic (as listed in the github README.md)
```
mopidy ytmusic setup
```

Other:
* [bluetooth on WSL2](https://stackoverflow.com/questions/65795071/bluetooth-in-docker-for-windows-host)
* [Entire tutorial](https://www.youtube.com/watch?v=ukU5tQeMgko)
* [Example extensive config](https://pythonrepo.com/repo/mopidy-mopidy-python-audio)

## Startup

Adapt config file:
```
sudo nano ~/.config/mopidy/mopidy.conf
```

Start mopidy directly:
```
mopidy
```

Then open [link](http://localhost:6680/iris/)

### Problem with gi
ModuleNotFoundError: No module named 'gi'

Didn't want to install pycairo. Fix listed [Here](https://askubuntu.com/questions/80448/what-would-cause-the-gi-module-to-be-missing-from-python)

```
sudo apt install pkg-config libcairo2-dev gcc python3-dev libgirepository1.0-dev
pip install gobject PyGObject
```

### Explored alternatives
Besides lists of comparing sites there are some popular options that stood out:
* [RoPiee(XL)](https://ropieee.org/xl/): OS + not customizable at all, not even ssh
* [Volumio](https://volumio.com/en/): OS + their free version is quite limited

Because of that the solution is software based rather than an OS


scp myfile.txt pi@192.168.0.198:/home/pi/Documents
