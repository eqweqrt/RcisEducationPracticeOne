import 'dart:io';
import 'dart:math';

void main() {

  try{

  int min = int.parse(stdin.readLineSync()!);
  int max = int.parse(stdin.readLineSync()!);
  var nums = [];
  Random r = Random();

  for(int i = 0; i < 10; i++){
    nums.add(r.nextInt(max - min) + min);
  }
  for(int i = 0; i < nums.length; i++){
    stdout.write("${nums[i]}, ");
  }

  }
  catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}