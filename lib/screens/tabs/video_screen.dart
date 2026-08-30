import 'package:face_book/Domai/custom_text_style.dart';
import 'package:face_book/widgets/user_video_post.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video',style: text.textStyle18.copyWith(
            color:Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
          actions: [
            Icon(Icons.person,size: 32,color: Colors.black,),
            const SizedBox(width: 10,),
            Icon(Icons.search_rounded,size: 32,color: Colors.black,),
          ],
      ),

      body: Column(
        children: [
          Divider(thickness: 3,),
          UserVideoPost(userName: 'Ana', userProfile:'assets/images/pexels-minan1398-941206.jpg', userPost:'assets/images/pexels-minan1398-941206.jpg'),

        ],
        ),
    
    );
  }
}