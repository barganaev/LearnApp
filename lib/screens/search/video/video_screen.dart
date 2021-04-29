import 'package:flutter/material.dart';
// import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatelessWidget {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: FlutterYoutube.playYoutubeVideoByUrl(
      //   apiKey: 'AIzaSyBMGRO-CNiBh8qnU0rC8q7yZlgltHwK_wA',
      //   videoUrl: 'https://www.youtube.com/watch?v=zEv1BX_HLZw',
      //   autoPlay: false,
      //   fullScreen: false,
      // ),
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressColors: ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
        onReady: () {
          print('Player is ready');
          // _controller.addListener(listener);
        },
      ),
    );
  }
}