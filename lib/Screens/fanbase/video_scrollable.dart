// // import 'package:flutter/material.dart';

// // class VideoWidget extends StatelessWidget {
// //   final Video video;

// //   VideoWidget({required this.video});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       margin: EdgeInsets.all(10),
// //       width: 200, // Adjust as per your requirement
// //       child: AspectRatio(
// //         aspectRatio: 16 / 9, // Assuming videos have a 16:9 aspect ratio
// //         child: VideoPlayer(video.url),
// //       ),
// //     );
// //   }
// // }


// // class VideoPlayer extends StatelessWidget {
// //   final String url;

// //   VideoPlayer(this.url);

// //   @override
// //   Widget build(BuildContext context) {
// //     // Use a video player package like video_player to display the video
// //     // Example:
// //     // return VideoPlayerController.network(
// //     //   url,
// //     //   autoplay: false,
// //     //   loop: true,
// //     // );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart'; // Import the video_player package

// class VideoPlayer extends StatelessWidget {
//   final String url;

//   VideoPlayer(this.url);

//   @override
//   Widget build(BuildContext context) {
//     // Use a video player package like video_player to display the video
//     // Example:
//     return VideoPlayerWidget(url: url);
//   }
// }

// class VideoPlayerWidget extends StatefulWidget {
//   final String url;

//   VideoPlayerWidget({required this.url});

//   @override
//   _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
// }

// class _VideoPlayerWidgetState extends State

