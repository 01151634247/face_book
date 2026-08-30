import 'package:face_book/Domai/custom_text_style.dart';
import 'package:flutter/material.dart';

class UserPostCard extends StatelessWidget {
   String userProfile;
   String userPost;
   String userName;
   String ?postDate;
   String ?numLikes;
   String ?numComment;
   String ?numShare;
  UserPostCard({super.key,required this.userName,required  this.userProfile,required this.userPost, this.postDate, this.numComment, this.numLikes, this.numShare});
  




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                ClipOval(child: Image.asset(userProfile,height: 50,width: 50,fit: BoxFit.cover,)
                ),
                SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userName,style: text.textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                    ),),
                     Row(
                       children: [
                         Text(postDate??"30 Agust",style: text.textStyle15,),
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
          ),
        )
         ,
       const SizedBox(
          height: 15,
         ),
          Image.asset(userPost,width: double.infinity,fit: BoxFit.cover,height: 500,),
     
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
                    child:Text(numLikes??"9",style: text.textStyle18.copyWith(
                      color: Colors.black87,
                    ),)),
                ],
              ),
            ),
               Row(
                
                children: [
                  Text("${numComment??"10"}comment",style: text.textStyle18.copyWith(
                    color: Colors.black87,
                  ),),
                  const SizedBox(width: 14,),
                   Text('${numShare??"20"}share',style: text.textStyle18.copyWith(
                    color: Colors.black87,
                  ),
                  ),
        
               ],
               ),
    
    
        ],
        ),
      ),
     const SizedBox(
      height: 10,
     ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
          Row(children: [
            Icon(Icons.thumb_up_alt_outlined,),
            Text('Like',style: text.textStyle15,),
        
          ],),
        
          //
          Row(children: [
            Icon(Icons.chat_bubble_outline,),
            Text('Comment',style: text.textStyle15,),
        
          ],),
        
          Row(children: [
            Icon(Icons.share,),
            Text('Send',style: text.textStyle15,),
        
          ],),
        
          Row(children: [
            Icon(Icons.mobile_screen_share_rounded),
            Text('Share',style: text.textStyle15,),
        
          ],),
          
        ],),
      ),
        
        const SizedBox(
              height: 10,
             ),

             Divider(thickness: 3,),
             const SizedBox(
              height: 10,
             ),
      
      ],
    );
  }
}