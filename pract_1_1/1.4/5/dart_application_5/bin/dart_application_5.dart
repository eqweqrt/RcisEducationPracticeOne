import 'dart:io';
void main () {

  try{
  print("X");
  int x = int.parse(stdin.readLineSync()!);
  print("Y");
  int y = int.parse(stdin.readLineSync()!);

  if (x > -1 && x < 3) {
    if (y > -2 && y < 4) {
      print("Принадлежит");
    } else {
      print("Не принадлежит");
    }
  } else {
    print("Не принадлежит");
  }
  }
  catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}