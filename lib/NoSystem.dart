import 'dart:io';

void main(){
var n=nosystem();
  n.setectoption();
}

class nosystem{
  void setectoption() {

    print("Press 1 for Greatest no, 2 for even no,3 for Odd no,4 for find No odd or Even 0 for exit");
    int option=int.parse(stdin.readLineSync().toString());
    if(option==1){
      greatestno();
    }
    else if (option==2){
    evenno();
    }
    else if (option==3){
      oddno();
    }
    else if (option==4){
      findoddoreven();
    }
    else if (option==0){
      print("Thanks For use");
    }
  }

    void greatestno(){
      int a,b,c;
      print("Enter 1st No");
      a=int.parse(stdin.readLineSync().toString());
      print("Enter 2nd No");
      b=int.parse(stdin.readLineSync().toString());
      print("Enter 3rd No");
      c=int.parse(stdin.readLineSync().toString());
      if(a>=b&&a>=c) {
        if (a == b&&a==c)
          print("1st no $a 2nd no $b or 3rd no $c teeno barabar hai");
       else if (a == b)
          print("1st no $a 2nd no $b k barabar hai");
      else
          print("1st No $a bda h");

      }
      else if (b>=a&&b>=c){

         if (b == c)
          print("2nd no $b 3rd no $c k barabar hai");
         else
           print("2nd No $b bda h");
      }
      else if (c>=a&&b<=c){
        if (a == c)
          print("3rd no $c 1st no $a k barabar hai");
      else
          print("3rd No $c bda h");
      }
      else {
        print("1st No $a 2nd No $b 3rd No $c Teeno barabar hai");
      }
     setectoption();
      }

    void oddno(){
    print("Kitne No tk Odd No print krne hai");
  int a=int.parse(stdin.readLineSync().toString());

      for(int i=1;i<=a;i++){
        int b=(2*i)-1;
        print("$b\n");
      }
      setectoption();
    }
  void evenno(){
    print("Kitne No tk Even N2o print krne hai");
    int a=int.parse(stdin.readLineSync().toString());
    for(int i=1;i<=a;i++){
      int b=2*i;
      print("$b\n");
    }
    setectoption();
}
  void findoddoreven(){
    print("Enter a No");
    int a=int.parse(stdin.readLineSync().toString());
  if(a%2==0){
    print("Even");}
    else{
      print("Odd");}
    setectoption();
  }

  }
