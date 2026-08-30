import 'package:face_book/Domai/custom_text_style.dart';
import 'package:face_book/widgets/friend_request_card.dart';
import 'package:flutter/material.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
           Text('Friends',style:text.textStyle30.copyWith(
                fontWeight:FontWeight.bold,
              ),),
            const  Icon(Icons.search_rounded,size: 33,color: Colors.black,),
            
            ],),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                  child: Row(
                    children: [
                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green,
                        ),

                      ),
                     const SizedBox(
                        width: 4,
                      ),
                      Text('Online',style: text.textStyle20.copyWith(
                      ),),
                    ],
                  ),
                )),

                 Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                  child: Text('Suggestions',style: text.textStyle20.copyWith(
                  ),),
                )),

                 Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                  child: Text('Your Friends',style: text.textStyle20.copyWith(
                  ),),
                ),),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(thickness: 2,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal:8),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(children: [
                Text ('Friend Requests',style: text.textStyle22.copyWith(
                 color: Colors.black,
               ), ),
               Text (' 300',style: text.textStyle22.copyWith(
                 color: Colors.blue,
               ), ),
            ],),
               Text('See all',style: text.textStyle25.copyWith(
                color: Colors.blue,
              ), ),
           
            ],
           ),
         ),
         
         FriendRequestCard(),
        ],
      ),
    );
  }
}