import 'package:face_book/Domai/custom_text_style.dart';
import 'package:flutter/material.dart';

class UserPostCard extends StatelessWidget {
  const UserPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                ClipOval(child: Image.asset('assets/images/woman.webp',height: 50,)
                ),
                SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Simran',style: text.textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                    ),),
                     Row(
                       children: [
                         Text('30 August ',style: text.textStyle15,),
                       const SizedBox(
                     width: 3,
                      ),
                         Icon(Icons.group),
                       ],
                     ),
          
                  ],
                ),
              ],
              ),
                SizedBox(
                  width: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.more_horiz),
                       Icon(Icons.close_rounded),
                    ],
                  ),
                ),
               
            ],
          )
           ,
         const SizedBox(
            height: 15,
           ),
            Image.asset('assets/images/pexels-soldiervip-1372137.jpg',width: double.infinity,fit: BoxFit.cover,height: 500,),
       
     const SizedBox(
        height: 10,
       ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Stack(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/icons/like.png',height: 30,),
                    Positioned(
                      left: 20,
                      child: Image.asset('assets/icons/heart (2).png',height: 30,),),
                       Positioned(
                      left: 55,
                      child:Text('10k',style: text.textStyle18.copyWith(
                        color: Colors.black87,
                      ),)),
                  ],
                ),
              ),
                 Row(
                  
                  children: [
                    Text('100 comments',style: text.textStyle18.copyWith(
                      color: Colors.black87,
                    ),),
                    const SizedBox(width: 14,),
                     Text('120 shares',style: text.textStyle18.copyWith(
                      color: Colors.black87,
                    ),),
          
                 ],),
          ],),
        ),
        
        ],
      ),
    );
  }
}