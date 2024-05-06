import 'package:flutter/material.dart';

// Import your home screen

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Delay for 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to home screen
      Navigator.pushReplacementNamed(context, '/');
    });

    // Your splash screen UI
    return const Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Text(
          'Welcome To UM Play',
          style: TextStyle(fontSize: 40, color: Colors.yellow),
        ),
      ),
    );
  }
}
