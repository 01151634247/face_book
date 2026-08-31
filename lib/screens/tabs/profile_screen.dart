import 'package:face_book/Domai/custom_text_style.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Map<String,dynamic>>listgrid=
  [
      {"icon":'assets/icons/rotate (2).png',
       "title":"Memories",
     },
     {"icon":'assets/icons/bookmark.png',
       "title":"Saved",
     },
    
      {"icon":'assets/icons/groups.png',
       "title":"Group",
     },
      {"icon":'assets/icons/video.png',
       "title":"Video",
     },
      {"icon":'assets/icons/shop.png',
       "title":'Marketplace',
     },
      {"icon":'assets/icons/friend.png',
       "title":"Friend(97 Online)",
     },
      {"icon":'assets/icons/feed.png',
       "title":"Feeds",
     },
      {"icon":'assets/icons/important-date.png',
       "title":"Events",
     },
    
      

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const SizedBox(
            height:30 ,
           ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:12 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Menu',style: text.textStyle30.copyWith(
                    fontWeight: FontWeight.bold,
                  ),),
                  Row(children: [
                    Icon(Icons.settings,size: 33,),
                    const SizedBox(width:20,),
                     Icon(Icons.search_rounded,size: 33,color: Colors.black,),
              
                  ],),
              
                ],
              ),
            ),
          const SizedBox(
              height: 10,
            ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Card(
                child: Row(
                  children: [
                    ClipOval(child: Image.asset('assets/images/pexels-soldiervip-1386599.jpg',width:70,height: 70,fit: BoxFit.cover,),),
                     Padding(
                       padding: const EdgeInsets.only(left: 15),
                       child: Text('Priya Sharma',style: text.textStyle25.copyWith(
                        fontWeight: FontWeight.bold,
                       ),),
                     ),
                ],),
               ),
             ),
              const SizedBox(
                height: 10,
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: Text('Your Shorcuts',style: text.textStyle22,),
               ),
          const SizedBox(
            height:15 ,
          ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8 ),
                      child: ClipOval(
                        child: Image.asset('assets/images/pexels-leonnebrito-1844012.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left:8 ),
                       child: ClipOval(
                        child: Image.asset('assets/images/pexels-olenagoldman-1021693.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                                         ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:8 ),
                       child: ClipOval(
                        child: Image.asset('assets/images/girl5.jpeg',width: 100,height: 100,fit: BoxFit.cover,),
                                         ),
                     ),
                     Padding(
                     padding: const EdgeInsets.only(left:8 ),
                       child: ClipOval(
                        child: Image.asset('assets/images/pexels-leonnebrito-1844012.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                                         ),
                     ),
                     Padding(
                      padding: const EdgeInsets.only(left:8 ),
                       child: ClipOval(
                        child: Image.asset('assets/images/pexels-leonnebrito-1844012.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                                         ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:8 ),
                       child: ClipOval(
                        child: Image.asset('assets/images/pexels-leonnebrito-1844012.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                                         ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:8 ),
                       child: ClipOval(
                        child: Image.asset('assets/images/pexels-leonnebrito-1844012.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                                         ),
                     ),
                     Padding(
                      padding: const EdgeInsets.only(left:8 ),
                       child: ClipOval(
                        child: Image.asset('assets/images/pexels-leonnebrito-1844012.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                                         ),
                     ),
                  ],
                ),
              ),
        
              SizedBox(
                height: 450,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: listgrid.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing:5 ,
                    mainAxisSpacing: 5,
                    childAspectRatio: 3/1.5,
                    crossAxisCount: 2),
                 itemBuilder:(context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8),
                    child: Card( 
                      child:Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Image.asset(listgrid[index]!['icon'],height: 30,),
                          const SizedBox(
                            height: 8,
                          ),
                         Text(listgrid[index]['title'],style: text.textStyle18,),
                        
                          ],
                        ),
                      ),
                    ),
                  );
                
                 }),
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      backgroundColor:Colors.black12, 
                    ) ,
                    onPressed: (){},
                   child: Text('See More',style: text.textStyle18.copyWith(
                    fontWeight: FontWeight.bold,
                   ),),),
                ),
              ),
        
              ListTile(
                leading: Icon(Icons.help,size: 30,),
                title: Text('Setting&Privacy',style: text.textStyle18,),
                trailing: Icon(Icons.keyboard_arrow_down_rounded,size: 30,),
              ),

                ListTile(
                leading: Icon(Icons.settings,size: 30,),
                title: Text('Setting&Privacy',style: text.textStyle18,),
                trailing: Icon(Icons.keyboard_arrow_down_rounded,size: 30,),
              ),

               ListTile(
                leading: Icon(Icons.category,size: 30,),
                title: Text('Professinal Acces',style: text.textStyle18,),
                trailing: Icon(Icons.keyboard_arrow_down_rounded,size: 30,),
              ),
               ListTile(
                leading: Icon(Icons.dataset_outlined,size: 30,),
                title: Text('Professinal ',style: text.textStyle18,),
                trailing: Icon(Icons.keyboard_arrow_down_rounded,size: 30,),
              ),
              
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      backgroundColor:Colors.black12, 
                    ) ,
                    onPressed: (){},
                   child: Text('LogOut',style: text.textStyle18.copyWith(
                    fontWeight: FontWeight.bold,
                   ),),),
                ),
              ),

              const SizedBox(
              height: 20,
              ),
          
          ],
        ),
      ),
    );
  }
}