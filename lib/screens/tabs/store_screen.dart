import 'package:face_book/Domai/custom_text_style.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  List<Map<String,dynamic>>items=[
    {'image':'assets/items/bikes.png',"price":r"$1000"},
     {'image2':'assets/items/canon_eosr8.jpeg',"price":r"$200"},
      {'image3':'assets/items/speaker.webp',"pricer":r"$200"},
       {'image':'assets/items/mobile.webp',"price":r"$200"},
        {'image':'assets/items/laptopsunder500-2048px-5452.webp',"price":r"$290"},
         {'image':'assets/items/cycle.webp',"price":r"$2060"},
     {'image2':'assets/items/canon_eosr8.jpeg',"price":r"$2600"},
      {'image3':'assets/items/speaker.webp',"price":r"$2060"},
       {'image':'assets/items/mobile.webp',"price":r"$250"},
        {'image':'assets/items/laptopsunder500-2048px-5452.webp',"price":r"$2500"},
         {'image':'assets/items/cycle.webp',"price":r"$3400"},





  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MarketPlace',style: text.textStyle30,),
        actions: [
          Icon(Icons.person,size: 30,),
            const SizedBox(
              width: 10,
            ),
            Icon(Icons.search,size: 30,),
             const SizedBox(
              width: 10,
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                        color: Colors.black12,
                                ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           const Icon(Icons.edit_note_sharp,size: 30,),
                            Text('Sell',style: text.textStyle18,)
                          ],
                        ),
                      ),
                     
                    ),
                  ),   
                   const SizedBox(
                    width: 10,
                   ),
                   Expanded(
                    child: Container(
                                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                        color: Colors.black12,
                                ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          const  Icon(Icons.menu,size: 30,),
                            Text('Catgories',style: text.textStyle20,)
                          ],
                        ),
                      ),
                     
                    ),
                  ),
              
                ],
              ),
            ),
            
            const SizedBox(
              height: 20,
            ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today,s',style: text.textStyle25),
                  Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.blue,size: 30,),
                      const SizedBox(
                        width: 5,
                      ),
                       Text('Location',style: text.textStyle25),
               
                    ],
                  ),
                ],
               ),
             ),
            const SizedBox(
              height: 10,
            ),
             GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 5/4.8,
                     
                crossAxisSpacing: 5,
                crossAxisCount: 2),
              itemBuilder: (context,index){
                return SizedBox(
                  child: Column(
                    children: [
                      Image.asset(items[index]['image']??'assets/items/bikes.png',width: 150,height: 150,fit: BoxFit.cover,),
                      Text(items[index]['price']??r'$100',style: text.textStyle18,),
                    ],
                  ),
                );
             
              })
          
          ],
        ),
      ),
    );
  }
}