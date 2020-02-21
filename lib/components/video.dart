import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// Flutter
class CustomVideoPlayer extends StatelessWidget {
  CustomVideoPlayer({@required this.args});

  final args;
  
  @override
  Widget build(BuildContext context) {

    VideoPlayerController _controller;
    Future<void> _initializeVideoPlayerFuture;

     _controller = VideoPlayerController.network(
      args.src,
    );

    _initializeVideoPlayerFuture = _controller.initialize();

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {

            return Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller)
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    args.details,
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}