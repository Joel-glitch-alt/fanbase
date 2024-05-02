// import 'package:flutter/material.dart';
// import 'package:cloudinary_flutter/cloudinary_object.dart';
// import 'package:cloudinary_flutter/video/cld_video_controller.dart';
// import 'package:cloudinary_url_gen/cloudinary.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class CloudinaryVideos extends StatefulWidget {
//   const CloudinaryVideos({super.key});

//   @override
//   State<CloudinaryVideos> createState() => _CloudinaryVideosState();
// }

// class _CloudinaryVideosState extends State<CloudinaryVideos> {
//   late CldVideoController _controller;
//   Cloudinary cloudinary = CloudinaryObject.fromCloudName(cloudName: 'demo');

//   @override
//   void initState() {
//     super.initState();

//     _controller = CldVideoController(cloudinary: cloudinary, publicId: 'dog')
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {});
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _controller.value.isInitialized
//             ? AspectRatio(
//                 aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(_controller),
//               )
//             : Container(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _controller.value.isPlaying
//                 ? _controller.pause()
//                 : _controller.play();
//           });
//         },
//         child: Icon(
//           _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }

// //void main() => runApp(const VideoApp());

// /// Stateful widget to fetch and then display video content.
// // class VideoApp extends StatefulWidget {
// //   const VideoApp({super.key});

// //   @override
// //   _VideoAppState createState() => _VideoAppState();
// // }

// // class _VideoAppState extends State<VideoApp> {
// //   late CldVideoController _controller;
// //   Cloudinary cloudinary = CloudinaryObject.fromCloudName(cloudName: 'demo');

// //   @override
// //   void initState() {
// //     super.initState();

// //     _controller = CldVideoController(cloudinary: cloudinary, publicId: 'dog')
// //       ..initialize().then((_) {
// //         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
// //         setState(() {});
// //       });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Video Demo',
// //       home: Scaffold(
// //         body: Center(
// //           child: _controller.value.isInitialized
// //               ? AspectRatio(
// //                   aspectRatio: _controller.value.aspectRatio,
// //                   child: VideoPlayer(_controller),
// //                 )
// //               : Container(),
// //         ),
// //         floatingActionButton: FloatingActionButton(
// //           onPressed: () {
// //             setState(() {
// //               _controller.value.isPlaying
// //                   ? _controller.pause()
// //                   : _controller.play();
// //             });
// //           },
// //           child: Icon(
// //             _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     super.dispose();
// //     _controller.dispose();
// //   }
// // }
