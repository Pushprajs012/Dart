import 'dart:io';

void main(){
var aaa=cheakno();
aaa.printno();
aaa.printnotwo();
aaa.addinlist();
aaa.cheak();
}

class a{
  List<int> lista=[];
  List<int> listb=[];
  printno(){
    int i=0;
    for (i; i<10;i++)
    {lista.add(i);
    }}
    printnotwo(){
      int i=10;
      for (i; i>0;i--)
      {
        listb.add(i);
      }
    }
  }
class b extends a{
  addinlist(){
   print("Enter No for add list 1 or 0 for exit");
   int a=1;
   while (a!=0)
     {
       a=int.parse(stdin.readLineSync().toString());
       lista.add(a);
     }
   print(lista.length);

  }
  }
  class cheakno extends b{
  void cheak(){
    print("List m no h ya nhi dekhne k liye no add kre");
    int a=int.parse(stdin.readLineSync().toString());
    if (lista.contains(a)){
      print("No h");
    }else
      print("No nhi h");
  }

  }


