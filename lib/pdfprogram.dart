

import 'dart:io';
import 'dart:math';
void main(){
var pro=progam();
pro.findname();

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
    Map<String,String> map={};

  }

  }
