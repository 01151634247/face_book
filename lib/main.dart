import 'package:face_book/screens/dash_bord_screen.dart';
import 'package:face_book/screens/tabs/friends_screen.dart';
import 'package:face_book/screens/tabs/notification_screen.dart';
import 'package:face_book/screens/tabs/profile_screen.dart';
import 'package:face_book/screens/tabs/store_screen.dart';
import 'package:face_book/screens/tabs/video_screen.dart';
import 'package:flutter/material.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
           body:ProfileScreen(),
      ),
     
    );
  }
}
