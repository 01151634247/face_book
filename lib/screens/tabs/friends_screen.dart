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
      body:  ListView(
        children: [
          Column(
          children: [
           const SizedBox(
              height: 5,
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
           
           FriendRequestCard(userName: 'pooja shram', userProfile:'assets/images/pexels-pixabay-247908.jpg', mul_2:'assets/images/girl1.jpeg',
            mul_1:'assets/images/pexels-willsantos-3383019.jpg',numMul: '10 mutual friends',
           ),
             FriendRequestCard(userName: 'cuti queen', userProfile:'assets/images/pexels-soldiervip-1386599.jpg',
              mul_2:'assets/images/woman.webp',
            mul_1:'assets/images/pexels-luiz-gustavo-miertschink-925274-1874792.jpg',
            numMul: '13 mutual friends',
           ),
               FriendRequestCard(userName: 'mega mww', userProfile:'assets/images/pexels-harsh-raj-gond-218020-1485031.jpg',
              mul_2:'assets/images/pexels-minan1398-672444.jpg',
            mul_1:'assets/images/pexels-luiz-gustavo-miertschink-925274-1874788.jpg',
            numMul: '8 mutual friends',
           ),
             FriendRequestCard(userName: 'dana rega', userProfile:'assets/images/pexels-leonnebrito-1844012.jpg',
              mul_2:'assets/images/pexels-dana-tentis-118658-364382.jpg',
            mul_1:'assets/images/pexels-pixabay-247908.jpg',
            numMul: '50 mutual friends',
           ),
             FriendRequestCard(userName: 'ega dnan', userProfile:'assets/images/girl1.jpeg',
              mul_2:'assets/images/girl2.jpg',
            mul_1:'assets/images/pexels-minan1398-941206.jpg',
            numMul: '33 mutual friends',
           ),
              FriendRequestCard(userName: 'fefet', userProfile:'assets/images/pexels-olenagoldman-1021693.jpg',
              mul_2:'assets/images/pexels-luhras-2189566.jpg',
            mul_1:'assets/images/pexels-olenagoldman-1021693.jpg',
            numMul: '33 mutual friends',
           ),
               
           FriendRequestCard(userName: 'pooja shram', userProfile:'assets/images/pexels-pixabay-247908.jpg', mul_2:'assets/images/girl1.jpeg',
            mul_1:'assets/images/pexels-willsantos-3383019.jpg',numMul: '10 mutual friends',
           ),
             FriendRequestCard(userName: 'cuti queen', userProfile:'assets/images/pexels-soldiervip-1386599.jpg',
              mul_2:'assets/images/woman.webp',
            mul_1:'assets/images/pexels-luiz-gustavo-miertschink-925274-1874792.jpg',
            numMul: '13 mutual friends',
           ),
               FriendRequestCard(userName: 'mega mww', userProfile:'assets/images/pexels-harsh-raj-gond-218020-1485031.jpg',
              mul_2:'assets/images/pexels-minan1398-672444.jpg',
            mul_1:'assets/images/pexels-luiz-gustavo-miertschink-925274-1874788.jpg',
            numMul: '8 mutual friends',
           ),
             FriendRequestCard(userName: 'dana rega', userProfile:'assets/images/pexels-leonnebrito-1844012.jpg',
              mul_2:'assets/images/pexels-dana-tentis-118658-364382.jpg',
            mul_1:'assets/images/pexels-pixabay-247908.jpg',
            numMul: '50 mutual friends',
           ),
             FriendRequestCard(userName: 'ega dnan', userProfile:'assets/images/girl1.jpeg',
              mul_2:'assets/images/girl2.jpg',
            mul_1:'assets/images/pexels-minan1398-941206.jpg',
            numMul: '33 mutual friends',
           ),
          ],
        ),
        ],
      )
      );
    
  }
}