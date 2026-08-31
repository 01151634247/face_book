import 'package:face_book/Domai/custom_text_style.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.userProfile, required this.icon, required this.title, required this.day});
  final String userProfile;
  final String icon;
  final String title;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
         const SizedBox(
            height: 100,
          ),
           SizedBox(
            height: 100,
             child: Stack(
              
               children: [
                 ClipOval(child: Image.asset(userProfile,height:80 ,width: 80,fit: BoxFit.cover,),),
                Positioned(
                  bottom: 37,
                  left: 55,
                  child:Image.asset(icon,height: 25,width: 25,) ,),
               ],
             ),
           ),
           Expanded(
             child: Padding(
               padding: const EdgeInsets.only(left: 10),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  Text(title,style: text.textStyle22,maxLines: 2,overflow: TextOverflow.ellipsis,),
                   Text(day,style: text.textStyle15,),
               
                ],
                        ),
             ),
           ),
        ]
      ),
    );
  }
}