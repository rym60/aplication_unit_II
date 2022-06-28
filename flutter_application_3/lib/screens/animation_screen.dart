import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }
  bool currentlyPlaying = false;
  void _iconTapped() {
    if (currentlyPlaying == false) {
      currentlyPlaying = true;
      _animationController.forward();
    } else {
      currentlyPlaying = false;
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: _iconTapped,
        child: AnimatedIcon(
          progress: _animationController,
          icon: AnimatedIcons.play_pause,
          size: 200,
        ),
      ),
    ));
  }
}