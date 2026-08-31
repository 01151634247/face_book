import 'package:face_book/Domai/custom_text_style.dart';
import 'package:face_book/widgets/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Notification',style: text.textStyle30,),
             const Icon(Icons.search_rounded,size: 30,color: Colors.black,),
            ],
            ),

          ),
         const SizedBox(
          height:30 ,
         ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text('New',style: text.textStyle25,),
          ),

          NotificationCard(userProfile: 'assets/images/girls3.jpg', icon: 'assets/icons/chat (1).png', title: 'how are you again how are you again how are you again how are you again', day: '5d',),
        ],
      ),
    );
  }
}