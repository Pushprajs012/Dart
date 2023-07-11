import 'dart:io';

void main(){
  int math,english,hindi,history,total;

  print("Enter Math No");
  math=int.parse(stdin.readLineSync().toString());

  print("Enter English No");
  english=int.parse(stdin.readLineSync().toString());
  print("Enter Hindi No");
  hindi=int.parse(stdin.readLineSync().toString());
  print("Enter History No");
  history=int.parse(stdin.readLineSync().toString());

  total=math+english+history+hindi;
  print("Total No :- $total");

  if (total>400||math>100||english>100||hindi>100||history>100) {
    print("Total 400 s jayada or no kisi 1 subject m 100 s jayda nhi ho skte");}
  else{
    if (math >= 60 && english >= 60 && hindi >= 60 && history >= 60) {
     if (total >= 320) {
      print("Bike");
    }

    else if (total >= 280 && total <=319) {
      print("Mobile");
    }
    else if (total >= 240 && total <= 279) {
      print("Nothing");
    }
  }

  else
    print("Riksha");
}
  }





