import 'package:cloudinary_flutter/cloudinary_object.dart';
import 'package:cloudinary_flutter/video/cld_video_controller.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';

class FanBase extends StatefulWidget {
  const FanBase({Key? key}) : super(key: key);

  @override
  State<FanBase> createState() => _FanBaseState();
}

class _FanBaseState extends State<FanBase> {
  ///late VideoPlayerController _controller;
  late CldVideoController _controller;
  Cloudinary cloudinary = CloudinaryObject.fromCloudName(cloudName: 'demo');

  //late Future<void> _initializeVideoPlayerFuture;
  // final List<String> videoUrl = [
  //   'https://www.youtube.com/watch?v=rXGKROqGKs4&list=PL6uAUC9pJzA8byjHbA5p74CL10HUO0EtM&index=2&pp=iAQB',
  //   'https://www.youtube.com/watch?v=1Yjf4uCCBFI',
  //   'https://www.youtube.com/shorts/jHgrq82MC_E',
  //   'https://www.youtube.com/shorts/jHgrq82MC_E',
  //   'https://www.youtube.com/shorts/jHgrq82MC_E',
  //   'https://www.youtube.com/shorts/jHgrq82MC_E',
  // ];

  @override
  void initState() {
    super.initState();

    /// _initializeVideoPlayers();
    _controller = CldVideoController(cloudinary: cloudinary, publicId: 'dog')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  /// void _initializeVideoPlayers() {
  //   _controller = VideoPlayerController.network(videoUrl.first);
  //   _initializeVideoPlayerFuture = _controller.initialize();
  //   _controller.setLooping(true);
  //   _controller.setVolume(1.0);
  /// }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(
          26, 34, 70, 0.89), // Set background color using RGBA values
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(26, 34, 70, 0.89),
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  filled: true,
                  fillColor: const Color.fromARGB(
                      255, 119, 155, 185), // Set background color to blue
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                        color: Colors.white), // Set border color to white
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                // Handle profile icon tap
                // print('Gooooo');
              },
              icon: const Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        //starting
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(251, 249, 250, 0.15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.group,
                    color: Colors.red,
                    size: 50,
                  ),
                  SizedBox(width: 100),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'First Text',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Second Text',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "FanBase trending Videos",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 350,
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FutureBuilder(
                    future: _controller.initialize(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                );
              },
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          const Text(
            'FanBase Media',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          //FanBase Media...
          const SizedBox(
            height: 10,
          ),
          //Second Screen
          Container(
            height: 150,
            width: 200,
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(right: 10.0), // Add right padding
                  child: FutureBuilder(
                    future: _controller.initialize(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child:
            Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
