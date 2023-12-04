import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learndart/milkcui.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var email=TextEditingController();
  var pass=TextEditingController();
  bool showpass=true;
  IconData iconeye=CupertinoIcons.eye;
 // IconData icons=CupertinoIcons.eye;

  hideshow(){
    if(showpass){
      showpass=false;
      print(showpass);
      iconeye=CupertinoIcons.eye_slash_fill;
    }
    else {
      showpass = true;
      iconeye=CupertinoIcons.eye;
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(title: Text("SighIn"),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.white,
        ],begin: Alignment.topCenter,
        end: Alignment.bottomCenter),),
        child: Center(
          child: Container(width: 360,
          height: 400,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),color: Colors.white),
          child: Column(children: [
            SizedBox(height: 10,),
            Text("Maleno",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
            SizedBox(height: 10,),
            milkui.ctextFild(hint: "Email", tec: email, picon: Icons.email,hide: false),
            SizedBox(height: 10,),
            milkui.ctextFild(hint: "Password", tec:pass, picon:Icons.password, sicon:iconeye,hide: showpass, callback: (){
            hideshow();
            setState(() {

            });

            }),

          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 20,),
            Container(
            height: 45,
            width: 150,
            child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            child: Text("Sign IN"),),
          ),
          SizedBox(width: 10,),
            TextButton(onPressed: (){}, child: Text("Forgot Password",style: TextStyle(color: Colors.blue),))

          ],)
],
        ),),),
      ),
      ),
    );
  }
}
