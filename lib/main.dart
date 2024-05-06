import 'package:fanbase/features/Screens/Contestants_Page/contestants_page.dart';
import 'package:fanbase/features/Screens/Gifts/gift_screen.dart';
import 'package:fanbase/features/Screens/Home_screen/home_screen.dart';
import 'package:fanbase/features/Screens/Profile_screen/profile_screen.dart';
import 'package:fanbase/features/Screens/artist_media_upload/second_screen.dart';
import 'package:fanbase/features/Screens/artist_media_upload/upload_form.dart';
import 'package:fanbase/features/Screens/collection/collection.dart';
import 'package:fanbase/features/Screens/extras/player_info.dart';
import 'package:fanbase/features/Screens/fanbase/fanbase.dart';
import 'package:fanbase/features/Screens/fanbase/thirdvideo.dart';
import 'package:fanbase/features/Screens/fanbase/video_two.dart';
import 'package:fanbase/features/Screens/splash_screen/splash_screen.dart';
import 'package:fanbase/features/Screens/subscription/subscription.dart';
import 'package:fanbase/features/Screens/voting/voting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //home: HomeScreen(),

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
      initialRoute: '/splash', // Set initial route to splash screen

      routes: {
        '/splash': (context) => SplashScreen(), // Define splash screen route
        '/': (context) => const ProfileScreen(),
        '/home': (context) => const HomeScreen(),
        '/playerinfo': (context) => const PlayerInfo(),
        '/subscription': (context) => const SubscriptionScreen(),
        '/voting': (context) => const VotingScreen(),
        '/collection': (context) => const CollectionScreen(),
        '/fanbase': (context) => const FanBase(),
        '/contestants': (context) => ContestantsPage(),
        '/gifts': (context) => const GiftScreen(),
        '/artist': (context) => const SecondScreen(),
      },
    );
  }
}
