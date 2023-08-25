import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RutinasEjercicio extends StatelessWidget {

  static String myVideoId = 'https://www.youtube.com/watch?v=PQSagzssvUQ&ab_channel=NASA';
  
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );
  RutinasEjercicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter and Youtube'),
        ),
        body: YoutubePlayer(
          controller: _controller,
          liveUIColor: Colors.amber,
        ));
  }
}
