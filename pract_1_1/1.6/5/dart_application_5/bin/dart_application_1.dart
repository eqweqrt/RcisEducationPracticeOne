import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {


try{
  int n = int.parse(stdin.readLineSync()!);
  int m = int.parse(stdin.readLineSync()!) - 1;

  Random random = new Random();
  List<List<int>> matrix = [];

  for (int i = 0; i < n ; i++) {
    matrix.add([]);
    for (int j = 0; j < m ; j++) {
      matrix[i].add(random.nextInt(2));
    }
  }
  for (int i = 0; i < n; i++) {
  int a = 0;
    for (int j = 0; j < m; j++) {
  if (matrix[i][j] == 1) {
  a++;
      }
    }
  if (a % 2 == 0) {
  matrix[i].add(0);
  } else {
  matrix[i].add(1);
    }
  }

  for (int i = 0; i < n; i++) {
  for (int j = 0; j < matrix[i].length; j++) {
  stdout.write("${matrix[i][j]} ");
    }
  print("");
  }
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}