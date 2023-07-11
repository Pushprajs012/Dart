import 'dart:io';

void main(){
  var bill=Bill();
  print("Welcome TO Grocery Shop");

  print("Your Name");
  bill.name=stdin.readLineSync().toString();

  print("Kitna Saman Chahiye Krpya KiloGram M Likhe");
  print("Enter Dal Rupay = 80Rs/KG");
  bill.dalkg=int.parse(stdin.readLineSync().toString());
  print("Enter Chawal Rupay = 100Rs/KG");
  bill.chawalkg=int.parse(stdin.readLineSync().toString());
  print("Enter Gehu Rupay = 70Rs/KG");
  bill.gehukg=int.parse(stdin.readLineSync().toString());
  print("Enter Urd Rupay = 120Rs/KG");
  bill.urdkg=int.parse(stdin.readLineSync().toString());
  bill.billPrint();
}

class Bill{

  late String name;
  final int dalrs=80;
  final int chawalrs=100;
  final int gehurs=70;
  final int urdrs=120;
  final int sgst=9;
  final int cgst=9;

  late int dalkg,chawalkg,gehukg,urdkg,total;
  late double gstrs, totalgstrs, totalpay;
  late int totaldal,totalchawal,totalgehu,totalurd;
void billPrint(){

//8561089567
print("\t\t\t\t\t\t\t\t\t\t\t\tShop Name");
print("\t\t\t\t\t\t\t\t\t\t\t   Grocery Shop");

print("Grahak Name:- $name \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t    The Grocery Shop");

totalchawal=chawalkg*chawalrs;
totaldal=dalkg*dalrs;
totalgehu=gehukg*gehurs;
totalurd=urdkg*urdrs;
total=totaldal+totalchawal+totalurd+totalgehu;
gstrs=(total*9)/100;
totalgstrs=(total*18)/100;
totalpay=total+totalgstrs;



print("Item\t\tDal \tChwal\tGehu\tUrd");
print("ItemRupay\t$dalrs\t\t$chawalrs\t\t$gehurs\t\t$urdrs");
print("Quantity\t$dalkg\t\t$chawalkg\t\t$gehukg\t\t$urdkg");
print("Rupay\t\t$totaldal\t\t$totalchawal\t\t$totalgehu\t\t$totalurd");
print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tTotal Rupay $total");
print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tTotal CGST  $gstrs");
print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tTotal SGST  $gstrs");
print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tTotal Pay   $totalpay");
print("Thanks For Shoping");

}}