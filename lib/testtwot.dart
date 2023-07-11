void main(){
var add=addonmap();
var remove=removemap();
add.testmap();
remove.testmap();
add.dataadd();
remove.removedata();
}
class Mapclass{
   Map<String, String> mapa= Map();
  void testmap(){
    mapa={
      "Id" : "0",
      "Name": "Xyz",
      "Gender": "Male"
    };
print("Print class a $mapa");
  }

}
class addonmap extends Mapclass{
  void dataadd(){
    mapa["age"]="20";
    print("Print addmap class $mapa");

  }

}
class removemap extends Mapclass{
  void removedata(){
    mapa.remove("Id");
    print("Print remove $mapa");
  }
  
}
