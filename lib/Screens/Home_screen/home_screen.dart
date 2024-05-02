import 'package:cloudinary_flutter/cloudinary_object.dart';
import 'package:cloudinary_flutter/video/cld_video_controller.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CldVideoController _controller;
  Cloudinary cloudinary = CloudinaryObject.fromCloudName(cloudName: 'demo');
//
  @override
  void initState() {
    super.initState();

    _controller = CldVideoController(cloudinary: cloudinary, publicId: 'dog')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  //
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
                  fillColor: const Color.fromARGB(255, 119, 155, 185),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.white),
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
                size: 40,
              ),
            ),
          ],
        ),
      ),
      //Body

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : const CircularProgressIndicator(),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          //Texts here...
          Container(
            child: const Row(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Artist",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Addition",
                      style: TextStyle(
                          color: Color.fromARGB(179, 206, 155, 155),
                          fontSize: 15),
                    )
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      "Song Title",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Addition",
                      style: TextStyle(
                          color: Color.fromARGB(179, 206, 155, 155),
                          fontSize: 15),
                    )
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      "Votes",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "4000",
                      style: TextStyle(
                          color: Color.fromARGB(179, 206, 155, 155),
                          fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          ),
          //
          const SizedBox(
            height: 20,
          ),
          //
          const Center(
            child: Text(
              'FanBase Trending Videos',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          //
          const SizedBox(
            height: 15,
          ),
          //-FanBase Trending Videos
          Container(
            margin: const EdgeInsets.only(left: 15),
            height: 100,
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                      width: 200,
                      margin: const EdgeInsets.only(right: 10),
                      // decoration: BoxDecoration(
                      //   color: Colors.grey[300],
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      child: _controller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            )
                          : const CircularProgressIndicator()),
                );
                // Text(
                //   "Video ${index + 1}",
                //   style: const TextStyle(fontSize: 16),
                // ),
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //Text..
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Regions and reps',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            //
            child: Text(
              'Region 1',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: const Color.fromARGB(69, 158, 158, 158),
                margin: EdgeInsets.only(left: 15),
                width: double.maxFinite,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.only(
                                left: 0, right: 5, top: 5, bottom: 0),
                            title: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Artist Name',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 1,
                            height: 0,
                          )
                        ],
                      );
                    }),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
