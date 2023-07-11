import 'dart:io';

void main(){
  var n=nosystem();
  n.setectoption();
}

class nosystem {
  void setectoption() {
    print("Press 1 for Table, 2 for Prime no, 0 for exit");
    int option = int.parse(stdin.readLineSync().toString());
    if (option == 1) {
    table();
    }
    else if (option == 2) {
//Primeno();
    }


    else if (option == 0) {
      print("Thanks For use");
    }
  }
  void table(){
    print("Entar a No");
    int a=int.parse(stdin.readLineSync().toString());
    for (int i=1;i<=10;i++){
      int b=a*i;
      print("$a*$i=$b");

    }
    setectoption();
  }
 /* void Primeno(){
    print("Entar a No");
    int a=int.parse(stdin.readLineSync().toString());
    int no=1;
    int forbhag=0;
    int count=1;
    int e=0;


  while(no>forbhag){

    if(no%forbhag==0){
     count++;
    };
    if (count==2){
      print(e);
    }
  } ;

    }e++;

setectoption();
  }*/

  }

