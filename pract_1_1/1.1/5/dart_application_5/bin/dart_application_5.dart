import 'dart:io';
void main() {

  String a = stdin.readLineSync()!;
  var b = a.split(" ");
  print(b.length);
  print("Start $a End");
}