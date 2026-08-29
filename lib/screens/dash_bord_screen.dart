import 'package:face_book/Domai/custom_text_style.dart';
import 'package:face_book/screens/tabs/friends_screen.dart';
import 'package:face_book/screens/tabs/home_screen.dart';
import 'package:face_book/screens/tabs/notification_screen.dart';
import 'package:face_book/screens/tabs/profile_screen.dart';
import 'package:face_book/screens/tabs/store_screen.dart';
import 'package:face_book/screens/tabs/video_screen.dart';
import 'package:flutter/material.dart';

class DashBordScreen extends StatefulWidget {
  const DashBordScreen({super.key});

  @override
  State<DashBordScreen> createState() => _DashBordScreenState();
}

class _DashBordScreenState extends State<DashBordScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'faceBook',
              style: text.textStyle30.copyWith(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.add_sharp,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.search_rounded, color: Colors.black, size: 40),
              const SizedBox(width: 5),
              Image.asset('assets/icons/chat.png', height: 30),
              const SizedBox(width: 7),
            ],
            bottom: TabBar(
              indicatorColor: Colors.blue,
              automaticIndicatorColorAdjustment: true,
              labelColor: Colors.blueAccent,
              tabs: [
                
                const Tab(icon: Icon(Icons.home)),
                const Tab(icon: Icon(Icons.video_collection)),
                const Tab(icon: Icon(Icons.group)),
                const Tab(icon: Icon(Icons.storefront)),
                const Tab(icon: Icon(Icons.notifications)),
                Tab(
                  icon: ClipOval(
                    child: Image.asset(
                      'assets/images/girls3.jpg',
                      height: 28,
                      width: 28,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),


          body: TabBarView(
            children: 
            [
              HomeScreen(),
              VideoScreen(),
              FriendsScreen(),
              StoreScreen(),
              NotificationScreen(),
              ProfileScreen(),
            ]
            ),
        ),
      ),
    );
  }
}
