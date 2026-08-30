import 'package:face_book/Domai/custom_text_style.dart';
import 'package:face_book/widgets/user_video_post.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final List<Map<String, String>> videoPosts = [
  {
    'name': 'Ana',
    'profile': 'assets/images/pexels-minan1398-941206.jpg',
    'video': 'assets/videos/1093667-hd_1920_1080_30fps.mp4'
  },
  {
    'name': 'lina ',
    'profile': 'assets/images/pexels-minan1398-941206.jpg',
    'video': 'assets/videos/3209213-uhd_3840_2160_25fps.mp4'
  },
  {
    'name': 'adrina',
    'profile': 'assets/images/pexels-leonnebrito-1844012.jpg',
    'video': 'assets/videos/5946371-uhd_3840_2160_30fps.mp4'
  },
   {
    'name': 'Ana',
    'profile': 'assets/images/pexels-minan1398-941206.jpg',
    'video': 'assets/videos/1093667-hd_1920_1080_30fps.mp4'
  },
  {
    'name': 'lina ',
    'profile': 'assets/images/pexels-minan1398-941206.jpg',
    'video': 'assets/videos/3209213-uhd_3840_2160_25fps.mp4'
  },
  {
    'name': 'adrina',
    'profile': 'assets/images/pexels-leonnebrito-1844012.jpg',
    'video': 'assets/videos/5946371-uhd_3840_2160_30fps.mp4'
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title: Text('Video',style: text.textStyle18.copyWith(
              color:Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            ),
            actions: [
              Icon(Icons.person,size: 32,color: Colors.black,),
              const SizedBox(width: 10,),
              Icon(Icons.search_rounded,size: 32,color: Colors.black,),
            ],
        ),
      
       

      body:ListView.builder(
        physics: BouncingScrollPhysics(),
      itemCount: videoPosts.length,
      itemBuilder: (context, index) {
        final post = videoPosts[index];
        return UserVideoPost(
          userName: post['name']!,
          userProfile: post['profile']!,
          userPost: post['video']!,
        );
      },
      ),
    );
  }
}
