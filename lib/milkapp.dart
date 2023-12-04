import 'package:flutter/material.dart';
import 'milkcui.dart';

class MilkApp extends StatefulWidget {
  const MilkApp({super.key});

  @override
  State<MilkApp> createState() => _MilkAppState();
}

class _MilkAppState extends State<MilkApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Milk App"),actions: [IconButton(onPressed: () {  },icon: Icon(Icons.notification_add),),]),
    body: Column(children: [Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextField(
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.search),
          hintText: "Search"
      ),
      ),
    ),
    Stack(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(height: 150,
        width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1570042225831-d98fa7577f1e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8fA%3D%3D&w=1000&q=80"),fit: BoxFit.fill)
        ),
        ),
      ),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
       child: Container(height: 150,
           width: 200,
       child: Text("Grab Your Dairy Items",style: TextStyle(color: Colors.white,fontSize: 30),),),
     )
      
    ],),


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            children: [
              Column(children: [
                milkui.cusContainer(60, 60, "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Glass_of_Milk_%2833657535532%29.jpg/598px-Glass_of_Milk_%2833657535532%29.jpg", 10),
                milkui.simpletext("Milk")
              ],), SizedBox(width: 20,),
              Column(children: [
                milkui.cusContainer(60, 60, "https://www.naatigrains.com/image/cache/catalog/naatigrains-products/NG203/desi-cow-ghee-a2-cow-ghee-good-home-made-good-cholesterol-naatigrains-120x120.jpg", 10),
                milkui.simpletext("Ghee")
              ],), SizedBox(width: 20,),
              Column(children: [
                milkui.cusContainer(60, 60, "https://www.mistrichacha.com/assets/images/products/1617608772nG4pbHUM.png", 10),
                milkui.simpletext("Dahi")
              ],),SizedBox(width: 20,),
              Column(children: [
                milkui.cusContainer(60, 60, "https://5.imimg.com/data5/SELLER/Default/2022/5/LE/BG/OB/134265478/butter-milk-500x500.jpg", 10),
                milkui.simpletext("Butter Milk")
              ],),

            ],

          ),
        )


    ],
    ),
    );
  }
}
