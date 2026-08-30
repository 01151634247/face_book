import 'package:face_book/Domai/custom_text_style.dart';
import 'package:flutter/material.dart';

class FriendRequestCard extends StatelessWidget {
  const FriendRequestCard({super.key, required this.userName, required this.userProfile, required this.mul_2, required this.mul_1, this.numMul});
  final String userName;
  final String userProfile;
  final String mul_2;
  final String mul_1;
  final String? numMul;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(child: Image.asset(userProfile,height: 100,width: 100,fit: BoxFit.cover,),),
        
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(userName,style: text.textStyle20.copyWith(fontWeight: FontWeight.bold),),
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Stack(
                      children: [
                        ClipOval(
                          child: Image.asset(mul_1,width: 35,height: 35,),
                        ),
                         Positioned(
                          left: 12,
                           child: ClipOval(
                            child: Image.asset(mul_2,width: 35,height: 35,),
                                         ),
                         ),

                          Positioned(
                          left: 45,
                           child: Text("$numMul",style: text.textStyle18.copyWith(
                            color: Colors.black38
                           ),),
                         ),
                            
                      ],
                    ),
                  ),
                 
                ],
              ),
             
             const SizedBox(
              height: 5,
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                    backgroundColor: Colors.blue,
                  ) ,
                  onPressed: (){},
                  child:Text('Conform',style: text.textStyle20.copyWith(
                    color: Colors.white,
                  ),),),
                  const SizedBox(
                    width: 5,
                  ),
                    ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                    backgroundColor: Colors.black26,
                  ) ,
                  onPressed: (){},
                  child:Text('Conform',style: text.textStyle20.copyWith(
                    color: Colors.black,
                  ),)),
               ],
             ),
            ],
            ),
          ),
      
      
        ],
      ),
    );
  }
}
