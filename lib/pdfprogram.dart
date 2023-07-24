
import 'dart:io';
import 'dart:math';
void main(){
var pro=progam();
pro.BMI();

}

class progam {
  void divisorsno() {
    print("Enter A NO");
    int a = int.parse(stdin.readLineSync().toString());
    print("Your No:- $a");
    int b = 1;
    for (int i = 0; i <= a; i++) {
      if (a % b == 0) {
        print(b);
      }
      b++;
    }
  }

  void listpro() {
    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    List<int> c = [];


    int i = 0;

    for (i; i < (a.length - 1); i++) {
      int x = a.elementAt(i);

      if (b.contains(x)) {
        b.remove(x);
        c.add(x);
      }
    }
    print(c);
  }

  void findoddeven() {
    List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    List<int> c = [];
    List<int> d = [];

    for (int i = 0; i < b.length - 1; i++) {
      if ((b.elementAt(i)) % 2 == 0) {
        c.add(b.elementAt(i));
      }
      else {
        d.add(b.elementAt(i));
      }
    }
    print("Sum No - $c");
    print("Visam No - $d");
  }

  void randomno() {
    int userno, c;
    int a = Random().nextInt(100);

    print("Guess a no 0 to 100");
    userno = int.parse(stdin.readLineSync().toString());
    if (userno > 100) {
      print("Krpya No 100 tk hi likhe");
    }
    else {
      print("Random No $a");
      if (userno < a) {
        c = a - userno;
      }
      else {
        c = userno - a;
      }
      if (c == 0) {
        print("Aapne Theek no Guess kiya hai");
      }
      else {
        print("Aap $c % Dur h");
      }
    }
  }

  void newlist() {
    List<int> a = [5, 10, 15, 20, 25];
    List<int> b = [];

    int x = a.first;
    int z = a.last;
    b.add(x);
    b.add(z);
    print(b);
  }

  void programno9() {
    List<int> a = [1,1,2, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    List<int> b=[];
    List<int> c=[];
    for (int i=0;i<a.length-1;i++) {
      if (b.contains(a.elementAt(i))) {
        c.add(a.elementAt(i));
      }
      else {
        b.add(a.elementAt(i));

      }
    }
    print(c);
  }

  void backwardsoder(){
    print("Enter Multiple Words");
    String name=stdin.readLineSync().toString();
    List<String> aa=<String>[];

    aa=name.split(" ");

   print(aa.reversed.join(" "));




  }

  void lastinpdf() {
    List<dynamic> list = [];

    for (int i = 1; i <= 100; i++) {
      if (i % 3 != 0 && i % 5 != 0) {
        list.add(i);
      } else if (i % 3 == 0 && i % 5 == 0) {
        list.add("Fizz-Bizz");
      }
      else if (i % 3 == 0) {
        list.add("Fizz");
      }
      else if (i % 5 == 0) {
        list.add("Buzz");
      }
    } print(list);
  }

  void simpleintrest(){
    print("Enter Mooldhan");
    int mooldhan=int.parse(stdin.readLineSync().toString());
    print("Enter Vyaj dar");
    int dar=int.parse(stdin.readLineSync().toString());
    print("Kiten Year k liye");
    int year=int.parse(stdin.readLineSync().toString());
    double vyaj;

    vyaj=(mooldhan*(dar*year))/100;

    print("Aapka Vyaj $vyaj h. Or Total dan ${(vyaj+mooldhan)}");
  }

  void square(){
    print("Enter a NO");
    int a=int.parse(stdin.readLineSync().toString());
 print("Square is ${(a*a)}");
  }

  void squareroot(){
    print("Enter a NO");
    int a=int.parse(stdin.readLineSync().toString());
    print("square root is ${sqrt(a)}");

  }

  void whitspace(){

    String string = "     Ram          Ram     ";
    print(string.replaceAll(new RegExp(r"\s+"), " "));

  }

  void vowelorconsonant(){
    final List<String> vowel=["a","e","i","o","u"];
    print("Enter A Character");
    String a=stdin.readLineSync().toString();
    a.trim();
    if (vowel.contains(a)){
      print("Vowel");
    }
else {
  print("consonant");
    }  }

  void areaofcircle(){
    const double pi = 3.1415926535897932;
    print("Enter radius of Circle");
    int a=int.parse(stdin.readLineSync().toString());
    print("Area of Circle ${(pi*a*a)}");
  }

  void findname(){
    //https://dart-tutorial.com/collections/where-in-dart/
    const List<String> friend =["Ram","yam", "Aashis", "Aakash", "Rohan"];
    List<String> a=friend.where((x) => x.startsWith("A")).toList();
print(a);
  }

  void findkeymap(){
    Map<String,String> map=Map();
    map={"Name": "My Name",
    "Phone" : "7088767698",
    "Age":"15",
      "Address":"XYZ"
    };
    map.removeWhere((key, value) => key.length !=4);
    print(map);

  }

  void secondlast(){
    int sum=0,k=0;
    print("Enter a NO");
    int a=int.parse(stdin.readLineSync().toString());
    for (int i=1;i<=a;i++){
      int j=0;
      sum=sum+i;
      j=i*i;
      k=k+j;

    }
    print(sum);
    print(k);
    print("Dono ka Antr ${((sum*sum)-k)}");
  }

  void leapyear(){
    bool leap=false;
    print("Enter a Year");
    int a=int.parse(stdin.readLineSync().toString());

    if (a%100==0){
      if(a%400==0){
      leap = true;
      }
    }
    else if(a%100!=0) {
     if (a%4==0){
       leap=true;
     }
     else leap=false;
    }
    print(leap);
  }

  void randomfour() {
    int cow = 0;
    int bull = 0;
    int x = 0;

    while (x!= 4) {
      x=0;
      int randomno = Random().nextInt(100) + 999;
      String random = randomno.toString();
      print("Guess One by one For Digit");
      print(random);
      int a = int.parse(stdin.readLineSync().toString());
      int b = int.parse(stdin.readLineSync().toString());
      int c = int.parse(stdin.readLineSync().toString());
      int d = int.parse(stdin.readLineSync().toString());

      int sa = int.parse(random[0]);
      int sb = int.parse(random[1]);
      int sc = int.parse(random[2]);
      int sd = int.parse(random[3]);


      print(a);


      if (a == sa) {
        cow++;
        x++;
        print(cow);
      }
      else {
        bull++;
      }
      if (b == sb) {
        cow++;
        x++;

        print(cow);
      }
      else {
        bull++;
      }
      if (c == sc) {
        cow++;
        x++;

        print(cow);
      }
      else {
        bull++;
      }
      if (d == sd) {
        cow++;
        x++;

        print(cow);
      }
      else {
        bull++;
      }

      print("You have $cow cow and $bull bull");
    }
  }

  void status(){
    var a=grno();
    int? no;
    no=a.generaterRandom();
    if (no==null){
      print("No=0");
    }
    else
      print("No=$no");

  }

void task(){
  List<String> task = [];
  int x=20;
  while(x!=0) {
    print(
        "Press 1 or Add Task, 2. For Remove Task, 3 for view Task, 0 for exit");
    int press = int.parse(stdin.readLineSync().toString());
    if (press == 1) {
      print("Enter Your Task");

      String user = stdin.readLineSync().toString();
      task.add(user);
    } else if (press == 2) {
      print("Kya remove krna h");
      String user = stdin.readLineSync().toString();
      if (task.contains(user)) {
        task.remove(user);
      }
    }
    else if (press == 3) {
      print(task);
    } else if (press == 0) {
    x=0;
    }
  }
}

void splitammount(){
    print("Enter Your Bill");
    double bill=double.parse(stdin.readLineSync().toString());
   print("Enter no of Friends");
   int friends=int.parse(stdin.readLineSync().toString());
    print("Split bill Ammount = ${(bill/friends)}");


}

void rockpaper() {
  final String name;
  int genrateno;
  int users = 0,
      cscore = 0;
  print("Enter your Name");
  name = stdin.readLineSync().toString();

  for (int i = 0; i <= 5; i++) {
    print("Enter 1 for Rock, 2 for Paper, 3 for Scissors");
    int userno = int.parse(stdin.readLineSync().toString());
    genrateno = Random().nextInt(3);
    int genratecno = Random().nextInt(3);
    if (userno > 0 && userno <= 3) {
      if (userno == genrateno && genratecno == genrateno) {
        print("Tie");
        users++;
        cscore++;
        print("$name Score - $users Computer Score - $cscore");
      }
      else if (userno == genrateno) {
        users++;
        print("$name Win");
        print("$name Score - $users Computer Spcre - $cscore");
      } else if (genratecno == genrateno) {
        cscore++;
        print("Computer Win");
        print("$name Score - $users Computer Spcre - $cscore");
      }
    }
    else
      print("Reenter Value");
  }
    if (users > cscore) {
      print("$name Win. Score $users");
    }
    else
      print("Computer Win. Score $cscore");

}

void BMI(){
  final String name;
  final int age;
  double height, weight, finalbmi;
  print("Enter Your Name");
  name=stdin.readLineSync().toString();
  print("Enter Your Age");
  age=int.parse(stdin.readLineSync().toString());
  print("Enter Your hight in meters");
  height=double.parse(stdin.readLineSync().toString());
  print("Enter Your weight");
  weight=double.parse(stdin.readLineSync().toString());
  var fbmi=Findbmi();
  finalbmi=fbmi.findbmi(height, weight);

  print("\t\t\t\t\t\t\t\t\t\ $name");
  print("\t\t\t\t\t\t Your Age \t\t\t $age");
  print("\t\t\t\t\t\t Your Hight \t\t $height");
  print("\t\t\t\t\t\t Your Weightg \t\t $weight");
  print("\t\t\t\t\t\t --------------------------");

  if (finalbmi < 18.5)
   print("\t\t\t\t\t\t $name Your Are underweight");

  else if (finalbmi >= 18.5 && finalbmi < 24.9)
   print("\t\t\t\t\t\t $name Your Are Healthy");

  else if (finalbmi >= 24.9 && finalbmi < 30)
   print("\t\t\t\t\t\t $name Your Areoverweight");

  else if (finalbmi >= 30)
   print("\t\t\t\t\t\t $name Your AreSuffering from Obesity");


}




  void gamehangman(){
   var recall=Recall();
    print("Yh ek bike compny h, jiske nam m 4 aknk h");
    print("Guess one by one");

    if (recall.a.isEmpty){
     recall.re("a","h");
     if (recall.b.isEmpty){
       recall.re("b","e");
       print(recall.b);
     }
     else {
       if (recall.c.isEmpty) {
         recall.re("c","r");
       } else {
         if (recall.d.isEmpty) {
           recall.re("d","o");
         }
       }}
     if (recall.c.isEmpty){
       recall.re("c","r");
     }
     else {
       if (recall.b.isEmpty) {
         recall.re("b","e");
       } else {
         if (recall.d.isEmpty) {
           recall.re("d","o");
         }
       }
     }
     if (recall.d.isEmpty){
       recall.re("d","o");
     }

    }
    else {
      if (recall.b.isEmpty) {
        recall.re("b","e");
      } else {
        if (recall.c.isEmpty) {
          recall.re("c","r");
        } else {
          if (recall.d.isEmpty) {
            recall.re("d","o");
          }
        }
      }
    }



  }
  }

  class Recall{
    final String Bike="Bike Compny";
    String a="";
    String b="";
    String c="";
    String d="";
    int no=0;
    int time=6;

   void re(String list,String word) {
      String aaa=word;
      String bbb=list;
        list = stdin.readLineSync().toString();
        if (list.contains(word)) {
          print("Aapne Shi Guess Kiya");
        }
        else {
          if (word.contains("h")){
            a="";
          } else if (word.contains("e")){
            b="";
          }else if (word.contains("r")){
            c="";
          }else if (word.contains("o")){
            d="";
          }


          no++;
          time--;
          print("App $no bar galt try kr chule h App $time bar or try kr skte h");
          if (time >= 1) {
            re(bbb, aaa);


          }
          else
            print("error");




      }

    }
}





class grno{
  int? generaterRandom(){
    int randomno = Random().nextInt(100) - 9;
    print(randomno);
    if (randomno>0){
    return 100;}
    else
      return
          null;
  }
}

class Findbmi{

   findbmi(double h,double w){
     double bmi=(w/(h*h));
     return bmi;

  }
}
