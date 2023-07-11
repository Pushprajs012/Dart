

import 'package:flutter/material.dart';


void main() {
  runApp(const Firstapp());}
class Firstapp extends StatefulWidget {
  const Firstapp({super.key});

  @override
  State<Firstapp> createState() => _FirstappState();

}

class _FirstappState extends State<Firstapp> {
  int noadd=0;
  no(){
    noadd++;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(child: Text("$noadd",style: TextStyle(fontSize: 30),),),
      floatingActionButton: FloatingActionButton(onPressed: (){no();}, child: Icon(Icons.add),backgroundColor: Colors.red,),
    );

  }
}
