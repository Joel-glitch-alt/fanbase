import 'package:fanbase/Screens/Contestants_Page/contestants_page.dart';
import 'package:fanbase/Screens/Gifts/gift_screen.dart';
import 'package:fanbase/Screens/Home_screen/home_screen.dart';
import 'package:fanbase/Screens/artist_media_upload/second_screen.dart';
import 'package:fanbase/Screens/collection/collection.dart';
import 'package:fanbase/Screens/extras/player_info.dart';
import 'package:fanbase/Screens/fanbase/fanbase.dart';
import 'package:fanbase/Screens/fanbase/thirdvideo.dart';
import 'package:fanbase/Screens/fanbase/video_two.dart';
import 'package:fanbase/Screens/subscription/subscription.dart';
import 'package:fanbase/Screens/voting/voting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: PlayerInfo()
        //SubscriptionScreen()
        // VotingScreen()
        // CollectionScreen()
        //GiftScreen()

        //PlayerInfo()
        //CollectionScreen()
        //ContestantsPage(),
        //FanBase(),
        // CloudinaryVideos()
        // ThirdVideoPlayer(),
        //VideoPlayer(),
        );
  }
}
