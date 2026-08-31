import 'package:face_book/Domai/custom_text_style.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const SizedBox(
          height: 100,
        ),
         SizedBox(
          height: 120,
           child: Stack(
            
             children: [
               ClipOval(child: Image.asset('assets/images/pexels-olenagoldman-1021693.jpg',height:80 ,width: 80,fit: BoxFit.cover,),),
              Positioned(
                bottom: 37,
                left: 55,
                child:Image.asset('assets/icons/chat (1).png',height: 25,width: 25,) ,),
             ],
           ),
         ),
      ]
    );
  }
}