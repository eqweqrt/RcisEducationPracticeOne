import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() {

try {
  var numstask1 = File("numsTask1.txt");
  var content = numstask1.readAsStringSync();
  List<String> nums = content.split(" ");
  int multiply = 1;
  int min = 999;
  int minIndex = 0;
  for (int i = 0; i < nums.length; i++) {
    if (int.parse(nums[i]) < min) {
      min = int.parse(nums[i]);
      minIndex = i;
    } else {
      continue;
    }
  }
  for (int i = minIndex; i < nums.length; i++) {
    multiply *= int.parse(nums[i]);
  }
  print(multiply);
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}