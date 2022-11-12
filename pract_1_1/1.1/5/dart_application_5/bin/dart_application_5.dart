import 'dart:io';
void main() {

try{
  String a = stdin.readLineSync()!;
  var b = a.split(" ");
  print(b.length);
  print("Start $a End");
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}