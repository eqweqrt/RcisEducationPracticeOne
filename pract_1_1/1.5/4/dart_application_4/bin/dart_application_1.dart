import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async { 

try{
  var numstask4 = File("numsTask4.txt");
  var content = numstask4.readAsStringSync();
  List<String> nums = content.split(';');
  int max = -999;

  for (int i = 0; i < nums.length; i++) {
    if (int.parse(nums[i]) > max) {
      max = int.parse(nums[i]);
    }
  }
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    if (int.parse(nums[i]) == max - 1) {
      sum += int.parse(nums[i]);
    }
  }
  print(sum);
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}
