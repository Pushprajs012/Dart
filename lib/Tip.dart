import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(tip());
}
class tip extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tipc(),);
  }
}
class Tipc extends StatefulWidget {
  const Tipc({super.key});

  @override
  State<Tipc> createState() => TipCalculator();
}
class TipCalculator extends State<Tipc>{
  var bill=TextEditingController();
  var tip=TextEditingController();
  int noofriend=1;
  int tiprs=00;
  double rs=000;
  int totalbill=00;
  int totaltip=0;
  int billrs=000;


  newvalue(String a){
    setState(() {
      tip.text=a;
      totaltip=int.parse(tip.toString());
    });

  }

  setbill(){
    print("Call set bill");

    if (totaltip==0){

      totaltip=0;
    }
    else{
      totalbill=totalbill+(totalbill*(totaltip/100).toInt());
      tiprs=(totalbill*(totaltip/100).toInt());
    }
    rs=totalbill/noofriend;
    
  }
  

  countfriendplus(){
    setState(() {
      noofriend++;
    });
  }
  countfriendsub(){
    setState(() {
      if (noofriend>=0){
        noofriend--;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Myapp")
      ,),

      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.free_breakfast,size: 50,),
              Column(children: [
                Row(children: [
                  Text("Mr",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black),),
                  Text("TIP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),
                ],),
                Text("Calculator",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),

              ],)
            ],),
          SizedBox(height: 10,),
          Container(
            width: 300,
            height: 180,
            decoration: BoxDecoration(color: Colors.white54,),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text("Total p/person"),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("\$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black),),
                    Text("$rs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),
                  ],),
                SizedBox(height: 20,),
                Divider(
                  height: 1,
                  color: Colors.black45,
                  thickness: 1,
                ),SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 20,),
                    Column(children: [
                      Text("Total Bill",style: TextStyle(fontSize: 10,color: Colors.black),),
                      Row(children: [
                        Text("\$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.lightBlueAccent),),
                        Text("$totalbill",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.lightBlueAccent),),
                      ],),
                    ],),
                    SizedBox(width: 30,),
                    Column(children: [
                      Text("Total Tip",style: TextStyle(fontSize: 10,color: Colors.black),),
                      Row(children: [
                        Text("\$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.lightBlueAccent),),
                        Text("$totaltip",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.lightBlueAccent),),
                      ],),
                    ],),
                  ],)
              ],
            ),
          ),

          SizedBox(height: 20,),
          Positioned(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Enter Your Bill"),
                SizedBox(height: 100,
                  width: 200,
                  child: TextField(
                    controller: bill,
                    onChanged: (c){ totalbill=int.parse(c); setbill();},
                    decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.money_dollar,size: 20,),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                )
              ],),
          ),
          Positioned(
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                Text("Enter Your Tip"),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(width: 50,
                          height: 40,
                          child: TextButton(onPressed: (){newvalue("10");}, child: Text("10%",style: TextStyle(color: Colors.white),),),
                          decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.circular(10)),),SizedBox(width: 10,),
                        Container(width: 50,
                          height: 40,
                          child: TextButton(onPressed: (){newvalue("15");}, child: Text("15%",style: TextStyle(color: Colors.white),),),
                          decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.circular(10)),),SizedBox(width: 10,),
                        Container(width: 50,
                          height: 40,
                          child: TextButton(onPressed: (){newvalue("20");}, child: Text("20%",style: TextStyle(color: Colors.white),),),
                          decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.circular(10)),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    SizedBox(height: 100,
                      width: 200,
                      child: TextField(
                        controller: tip,
                        decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.percent,size: 20,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                  ],)
              ],),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Split the total"),
              Row(
                children: [
                  Container(width: 40,
                    height: 40,
                    child: TextButton(onPressed: (){countfriendsub();}, child: Text("-",style: TextStyle(color: Colors.white),),),
                    decoration: BoxDecoration(color: Colors.lightBlueAccent),),

                  Container(width: 50,
                    height: 40,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("$noofriend",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 20),),
                      ],
                    ),
                    decoration: BoxDecoration(color: Colors.white),), Container(width: 50,
                    height: 40,
                    child: TextButton(onPressed: (){countfriendplus();}, child: Text("+",style: TextStyle(color: Colors.white),),),
                    decoration: BoxDecoration(color: Colors.lightBlueAccent),),
                ],
              ),],)

        ],
      )
      ,);
  }

}