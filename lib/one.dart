import 'dart:io';

void main(){
  int a,b; bool istrue=true; String char; String massage = "Thanks For Using me";
  stdout.write("Enter 1st No");
 a= int.parse(stdin.readLineSync().toString());
  stdout.write("Enter 2nd No");
  b= int.parse(stdin.readLineSync().toString());

  stdout.write("Enter + , -, *, /");
  char=stdin.readLineSync().toString();
  Calculator calu=Calculator();
  if (calu.cal(a, b, char)==0.71){
    stdout.writeln("Error");
    istrue=false;
    stdout.writeln(istrue);
  }
  else
  {print(calu.cal(a, b, char));
  print(istrue);}

stdout.writeln(massage);
}

class Calculator{
    double cal(int a, int b, String char) {
      int c=0;
      double d = 0.0;
      if (char.compareTo("+") == 0) {
        c = a + b;
      }
      else if (char.compareTo("-") == 0) {
        c = a - b;
      }
      else if (char.compareTo("*") == 0) {
        c = a * b;
      }
      else if (char.compareTo("/") == 0) {
        d = a / b;
      }
      else {
        d = 0.71;
      }
      d=c.toDouble();
      return d;
    }}