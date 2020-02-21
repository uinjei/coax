import 'package:flutter/material.dart';

// Flutter
class CustomImage extends StatelessWidget {
  CustomImage({@required this.src});

  final src;
  //final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('Card $src'),
          Image.network(src),
        ],
      )
    );
  }
}
