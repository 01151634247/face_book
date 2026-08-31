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
        ClipOval(child: Image.asset('assets/images/pexels-olenagoldman-1021693.jpg',height:80 ,width: 80,fit: BoxFit.cover,)),
      
    ],
    );
  }
}