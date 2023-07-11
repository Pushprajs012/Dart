import 'dart:io';

void main(){
  print("for add press 1 , and 2 for sub");
  int userinput=int.parse(stdin.readLineSync().toString());
  var b=B();
  if (userinput==1){
   b.scanandprint();
   b.add(b.no1,b.no2);
   b.value();
  }
  else if (userinput==2){
    b.scanandprint();
    b.sub(b.no1,b.no2);
    b.value();
  }
  else {
    print("error");
  }
}
class B extends subtract {
  int no1=0;
  int no2=0;
  value(){
    print(c);
  }
  scanandprint(){
    print("Enter 2 NO");
    no1=int.parse(stdin.readLineSync().toString());
    no2=int.parse(stdin.readLineSync().toString());
  }
}
class Add{
  int c=0;
  add(int a,int b){
    c=a+b;

  }
}
class subtract extends Add{
 
  sub(int a,int b){
    c=a-b;
}}