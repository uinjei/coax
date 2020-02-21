import 'package:flutter/material.dart';
import 'package:coax/components/video.dart';
import 'dart:developer' as developer;

class InstructionPage extends StatefulWidget {
  InstructionPage({Key key}) : super(key: key);
  
  static const routeName = '/instruction';

  @override
  _InstructionPageState createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {

  @override
  Widget build(BuildContext context) {

    final InstructionPageArgs args = ModalRoute.of(context).settings.arguments;

    return CustomVideoPlayer(args: args, toggleIcon: _toggleIcon);
  }
  
  void _toggleIcon(_controller) {
    setState(() {
      developer.log('_controllerness: '+ _controller.value.isPlaying.toString());
      // If the video is playing, pause it.
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        // If the video is paused, play it.
        _controller.play();
      }
    });
  }
}

class InstructionPageArgs {
  final String title;
  final String details;
  final String src;
  InstructionPageArgs(this.title, this.details, this.src);
}