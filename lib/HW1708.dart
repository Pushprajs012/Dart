import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class anim extends StatefulWidget {
  const anim({super.key});

  @override
  State<anim> createState() => _animState();
}

class _animState extends State<anim> {
  double hight=100;
  double width= 100;
  Color color=Colors.green;
  var listColor=[
    Colors.amber,
    Colors.blue,
    Colors.deepOrange,
    Colors.orange,
    Colors.brown,
    Colors.deepPurple,
    Colors.tealAccent
  ];
 myloop(){
   int a=0;
   while (a==0) {
     width = Random().nextInt(500).toDouble();
     hight = Random().nextInt(500).toDouble();
     color = listColor[Random().nextInt(listColor.length)];
   }
 }
  @override
  void initState() {

    Timer(Duration(seconds: 1),(){
      myloop();});
      super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("HW"),),
    body: Center(child: Container(
      width: width,
      height: hight,
      color: color,
      child: AnimatedContainer(
        width: width,
        height: hight,
        color: color,
      duration: Duration(seconds: 5),)
      ),
    ),
    );
  }
}
