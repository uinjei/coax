import 'package:flutter/material.dart';
import 'package:coax/components/video.dart';

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

    return CustomVideoPlayer(args: args);
  }

}

class InstructionPageArgs {
  final String title;
  final String details;
  final String src;
  InstructionPageArgs(this.title, this.details, this.src);
}