import 'package:flutter/material.dart';

class AudioPlayerModel extends ChangeNotifier {
  bool _playing = false;
  late AnimationController _controller;

  set controller(AnimationController value) {
    _controller = value;
  }

  AnimationController get controller => _controller;
}
