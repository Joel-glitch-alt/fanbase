// import 'package:appinio_video_player/appinio_video_player.dart';
// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class VideoPlayer extends StatefulWidget {
//   const VideoPlayer({super.key});

//   @override
//   State<VideoPlayer> createState() => _VideoPlayerState();
// }

// class _VideoPlayerState extends State<VideoPlayer> {
//   late CustomVideoPlayerController _customVideoPlayerController;
//   final String videoUrl =
//       'https://www.youtube.com/watch?v=rXGKROqGKs4&list=PL6uAUC9pJzA8byjHbA5p74CL10HUO0EtM&index=2&pp=iAQB';

//   @override
//   void initState() {
//     super.initState();
//     initializedVideoPlayer();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomVideoPlayer(
//           customVideoPlayerController: _customVideoPlayerController),
//     );
//   }

//   //
//   void initializedVideoPlayer() {
//     VideoPlayerController _videoPlayerController;
//     Uri videoUri = Uri.parse(videoUrl);
//     _videoPlayerController = VideoPlayerController.network(videoUri.toString())
//       ..initialize().then((value) {
//         setState(() {});
//       });
//     _customVideoPlayerController = CustomVideoPlayerController(
//         context: context, videoPlayerController: _videoPlayerController);
//   }
// }
