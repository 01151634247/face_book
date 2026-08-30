import 'package:face_book/Domai/custom_text_style.dart';
import 'package:face_book/widgets/others_user_story_card.dart';
import 'package:face_book/widgets/user_post_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height:15 ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
             [
              ClipOval(child: Image.asset('assets/images/pexels-dana-tentis-118658-364382.jpg',height: 50,width: 50,fit:BoxFit.cover,)),
                SizedBox(
                  width: 260,
                  height: 50,
                  child: TextField(
                    
                    decoration: InputDecoration(
                      hintText: 'what is in your mind?',
                      hintStyle: text.textStyle15,
                      focusedBorder: OutlineInputBorder(
                        borderSide:const BorderSide(color: Colors.black54,width: 1),
                       borderRadius: BorderRadius.circular(20),),
                       disabledBorder: OutlineInputBorder(
                         borderSide:const BorderSide(color: Colors.black54,width: 1),
                       borderRadius: BorderRadius.circular(20),),
                       enabledBorder: OutlineInputBorder(
                         borderSide:const BorderSide(color: Colors.black54,width: 1),
                       borderRadius: BorderRadius.circular(20),),
                  
                      ),
                    ),
                ),
        
                Icon(Icons.image,size: 47,color: Colors.green,)
          ],
          ),
            Divider(
              thickness: 3,
            ),
           SizedBox(
            height: 200,
             child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  height: 200,
                  width: 120,
                  child: Card(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12),),
                            image: DecorationImage(image: AssetImage('assets/images/pexels-ira-dulger-647031-1452129.jpg'),fit:BoxFit.cover),
                          ),
                         /// height: 100,
                         // width: 120,
                         ),
                        Positioned(
                          top: 85,
                          left:38 ,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: Colors.white,width: 2,
                              )
                            ),
                            child: Icon(Icons.add,size: 35,color: Colors.white,),
                          ),
                        ),
                          Positioned(
                            bottom: 4,
                            left: 12,
                            child: Text('Create Story',style: text.textStyle15,)),
                      ],
                    ),
                  ),
                  
                   
                ),
                OthersUserStoryCard(
                userName: 'priya',
                image: 'assets/images/girls3.jpg',
                
               ),
               //
               OthersUserStoryCard(
                userName: 'pogy',
                image: 'assets/images/pexels-soldiervip-1372137.jpg',
                
               ),
        
               //
               OthersUserStoryCard(
                userName: 'mraua',
                image: 'assets/images/pexels-soldiervip-1386599.jpg',
                
               ),
                OthersUserStoryCard(
                userName: 'merciaa',
                image: 'assets/images/girls3.jpg',
                
               ),
               //
               OthersUserStoryCard(
                userName: 'madona',
                image: 'assets/images/pexels-soldiervip-1372137.jpg',
                
               ),
        
               //
               OthersUserStoryCard(
                userName: ' shrma',
                image: 'assets/images/pexels-soldiervip-1386599.jpg',
                
               ),
        
        
              ],
             ),
           ),
             Divider(thickness: 3,),
             SizedBox(
        height: 5,
             ),
             UserPostCard(userName: 'soname', userProfile: 'assets/images/girl5.jpeg', userPost: 'assets/images/girl5.jpeg',),
              UserPostCard(userName: 'Beatuy', userProfile:'assets/images/pexels-soldiervip-1386599.jpg', userPost:'assets/images/pexels-harsh-raj-gond-218020-1485031.jpg',),
             UserPostCard(userName: 'mariao', userProfile: 'assets/images/pexels-eliasdecarvalho-1375849.jpg', userPost: 'assets/images/pexels-soldiervip-1372137.jpg'),
              UserPostCard(userName: 'nadon', userProfile: 'assets/images/pexels-leonnebrito-1844012.jpg', userPost: 'assets/images/pexels-leonnebrito-1844012.jpg'),
        ],
        ),
      ),
    );
  }
}