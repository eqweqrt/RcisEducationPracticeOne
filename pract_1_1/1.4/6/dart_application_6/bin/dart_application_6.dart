import 'dart:io';

void main() {
try {
  print("Введи координату a:");
  int a = int.parse(stdin.readLineSync()!);
  print("Введи координату b:");
  int b = int.parse(stdin.readLineSync()!);
  if ((a == 0) && ((b == 1) || (b == 0) || (b == -2)) || (((a == -1) || (a == 1)) && ((b == -1) || (b == -2)))) {
    print("Точка принадлежит заштрихованной области.");
  }
  else {
    print("Точка не принадлежит заштрихованной области.");
  }
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}