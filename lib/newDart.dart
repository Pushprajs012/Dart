import 'dart:io';

void main(){
  int a;
  int b;
  int c;

  stdout.write("Enter First No");
  a=int.parse(stdin.readLineSync().toString());
  stdout.write("Enter 2nd No");
  b=int.parse(stdin.readLineSync().toString());
  c=a+b;
  stdout.write("Jod = ${c}");



}