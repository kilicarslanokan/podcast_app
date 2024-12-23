import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart';
import 'screens/home_screen.dart';
import 'screens/now_playing_screen.dart';

void main() {
  runApp(PodkesApp());
}

class PodkesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Podkes',
      theme: ThemeData.dark(),
      home: OnboardingScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/now_playing': (context) => NowPlayingScreen(),
      },
    );
  }
}
