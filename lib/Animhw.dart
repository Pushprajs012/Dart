import 'package:flutter/material.dart';
import 'package:learndart/HeroAnim.dart';

class Animat extends StatefulWidget {
  const Animat({super.key});

  @override
  State<Animat> createState() => _AnimatState();
}

class _AnimatState extends State<Animat> {
  double turn=0.0;
  bool roanim=false;
  bool scaleanim=false;
  bool fadeone=true;
  bool fadetwo=true;
  bool tohide=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ram"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedRotation(turns: turn, duration: Duration(seconds: 5),child:
            AnimUIHelper.ccontainer(roanim),
            ),
            AnimatedScale(scale: turn, duration: Duration(seconds: 5),child:
              AnimUIHelper.ccontainer(scaleanim),),

               AnimatedCrossFade(firstChild: AnimUIHelper.ccontainer(fadeone), secondChild: Visibility(
                 visible: fadetwo,
                 child: Container(height: 200,
                   width: 200,
                   color: Colors.blue,
                 ),
               ), crossFadeState: tohide?
               CrossFadeState.showSecond:
               CrossFadeState.showFirst, duration: Duration(seconds: 5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimUIHelper.cbutton("Rotation", () {
                  setState(() {
                    roanim=true;
                    scaleanim=false;
                    fadeone=false;
                    fadetwo=false;
                turn=.5;
               // turn==0? turn=.5 : turn=0;
                  });
                }),
                AnimUIHelper.cbutton("Scale", () {
                  setState(() {
                    roanim=false;
                    scaleanim=true;
                    fadeone=false;
                    fadetwo=false;
                    turn=2;
                  });
                }),
                AnimUIHelper.cbutton("CrossFade", () {
                  setState(() {
                    tohide=true;
                    fadetwo=true;
                    roanim=false;
                    scaleanim=false;
                  }
                  );
                })
              ],
            ),
            SizedBox(height: 20,),
            AnimUIHelper.cbutton("Hero", () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HeroAnim()));
            }),
          ],
      ),
    );
  }
}

class AnimUIHelper{
  static cbutton(String text,VoidCallback callback){
    return ElevatedButton(onPressed: (){callback();}, child: Text(text));
  }

  static ccontainer(bool isshow){
    return  Visibility(
      visible: isshow,
      child: Container(height: 200,
        width: 200,
        color: Colors.red,

      ),
    );

  }
}
