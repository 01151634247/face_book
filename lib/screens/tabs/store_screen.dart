import 'package:face_book/Domai/custom_text_style.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
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
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}