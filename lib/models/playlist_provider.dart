import 'package:flutter/material.dart';
import 'package:musicapp/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  // playlist of songs
  final List<Song> _playlist = [
    Song(
      songName: "hasan",
      artistName: "test",
      albumArtImagePath:
          "assets/images/IMG_20220306_193011_427_188904724993050.jpg",
      audioPath: "assets/audio/file_example_MP3_700KB.mp3",
    ),
    Song(
      songName: "hasan2",
      artistName: "test2",
      albumArtImagePath:
          "assets/images/IMG_20220306_193011_427_188904724993050.jpg",
      audioPath: "assets/audio/file_example_MP3_700KB.mp3",
    ),
    Song(
      songName: "hasan3",
      artistName: "test3",
      albumArtImagePath:
          "assets/images/IMG_20220306_193011_427_188904724993050.jpg",
      audioPath: "assets/audio/file_example_MP3_700KB.mp3",
    ),
  ];
  // current song playing index

  int? _currentSongIndex;

  // getters

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  // setters

  set currentSongIndex(int? newIndex) {
    // update current song index
    _currentSongIndex = newIndex;
    // update UI
    notifyListeners();
  }
}
