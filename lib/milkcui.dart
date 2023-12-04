import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class milkui{
  static cusContainer(double h, double w, String url, double r){
      return Container(
        height: h,
        width: w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(r),
        image: DecorationImage(image: NetworkImage(url),fit: BoxFit.fill)
      ));
  }

  static simpletext(String s){
    return Text(s);
  }

  static ctextFild({required String hint, TextEditingController? tec,required IconData picon, IconData? sicon,required bool hide,VoidCallback? callback }){
    return Container(height: 45,
    width: 320,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.2),
    ),
    child: TextField(
      controller: tec,
        obscureText: hide,

      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(picon),
        suffix: IconButton(icon: Icon(sicon), onPressed: () { callback!(); },),
       //3 suffixIcon: IconButton(icon: Icon(sicon), onPressed: () { callback!(); },)

      ),
    ),);
  }

}