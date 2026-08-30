import 'package:face_book/Domai/custom_text_style.dart';
import 'package:flutter/material.dart';

class OthersUserStoryCard extends StatefulWidget {
  String userName;
  String image;
   OthersUserStoryCard({super.key,required this.userName,required this.image});

  @override
  State<OthersUserStoryCard> createState() => _OthersUserStoryCardState();
}

class _OthersUserStoryCardState extends State<OthersUserStoryCard> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200,
      width: 120,
      child: Card(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12),
                bottomLeft:  Radius.circular(12),bottomRight:  Radius.circular(12),),
                image: DecorationImage(image: AssetImage(widget.image),fit:BoxFit.cover),
              ),
             ),
            Positioned(
              top: 12,
              left:30 ,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.cover),
                  border: Border.all(
                    color: Colors.blueAccent,width: 2,
                  )
                ),
              ),
            ),
              Positioned(
                bottom: 4,
                left: 3,
                child: Text(widget.userName,style: text.textStyle15.copyWith(
                  color: Colors.white
                ),)),
          ],
        ),
      ),
    );
          
  }
}