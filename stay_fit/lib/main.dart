import 'dart:async';
import 'package:camera/camera.dart';

import 'package:flutter/material.dart';

import 'screens/options_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/wallet_screen.dart';
import 'screens/yoga_screen.dart';
import 'screens/meditation_screen.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(StayFit());
}

class StayFit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      initialRoute: '/options',
      routes: {
        // '/': (context) => HomePage(),
        '/options': (context) => OptionsScreen(),
        '/profile': (context) => ProfileScreen(),
        '/wallet': (context) => WalletScreen(),
        '/meditation': (context) => MeditationScreen(),
        '/yoga': (context) => YogaScreen(cameras),
      },
    );
  }
}
