# import gi
from mopidy.audio import scan
from mopidy.internal.path import path_to_uri
from mopidy.models import Track, TlTrack
from mopidy.core import TracklistController, Core
from mopidy import exceptions
from mopidy.core import PlaybackState

import os


def main():
    scanner = scan.Scanner()
    path = os.path.abspath('/home/gerard/Music/test.mp3')
    uri = path_to_uri(path)
    track = Track(uri=uri)
    core = Core()
    tracklist_controller = TracklistController(core)
    tracklist_controller.add([track])
    # track2 = Track(scanned_file)
    print(tracklist_controller)

if __name__ == '__main__':
    main()
