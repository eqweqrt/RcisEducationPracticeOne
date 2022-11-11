import 'dart:io';

void main() {
  int a = 1;
  int sum = 0;
  double resMult = 1;
  double midle = 0;

  while (a > 0){
    a = int.parse(stdin.readLineSync()!);
    sum += a;

    if (a == 0){
      break;
    }
    else{
      midle++;
      resMult *= a;
    }
  }
  print(sum);
  print(resMult);
  print(midle);
}