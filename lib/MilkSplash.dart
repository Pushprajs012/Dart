import 'dart:async';
import 'Auth/MilkSingIn.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashSchreen extends StatefulWidget {
  const SplashSchreen({super.key});

  @override
  State<SplashSchreen> createState() => _SplashSchreenState();
}

class _SplashSchreenState extends State<SplashSchreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=>SignIn()));
    } );
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(gradient: LinearGradient(colors:[
    Colors.blue,
      Colors.white],begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
    ),),child: Center(child: AnimatedTextKit(animatedTexts: [TyperAnimatedText("Maleno",textStyle: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,color: Colors.white),)],
    pause: Duration(seconds: 5),totalRepeatCount: 5,),),


    ),
    );
  }
}

