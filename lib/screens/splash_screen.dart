import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icons/communication (1).png',height: 100,),
         const SizedBox(
            height:500 ,
          ),
          Text('From',style: TextStyle(
            fontSize: 20,
            color: Colors.black54,
          ),),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             Row(children: [
              Image.asset('assets/icons/meta (1).png',height: 30,color: Colors.blue,),
              const SizedBox(
                width: 8,
              ),
              Text('Meta',style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),),
             ],),
            ],),
          ),
        ],
      ),
    );
  }
}