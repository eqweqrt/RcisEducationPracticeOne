import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async { 

try{
 var numstask5 = File("numsTask5.txt");
  var content = numstask5.readAsStringSync();
  List<String> nums = content.split(';');
  int maxIndex = 0;
  int max = -999;
  int minIndex = 0;
  int min = 999;

  for (int i = 0; i < nums.length; i++) {
    if (int.parse(nums[i]) > max) {
      max = int.parse(nums[i]);
      maxIndex = i;
    }
    if (int.parse(nums[i]) < min) {
      min = int.parse(nums[i]);
      minIndex = i;
    }
  }

  int counter = 0;
  int sum = 0;

  if (minIndex < maxIndex) {
    for (int i = minIndex + 1; i < maxIndex; i++) {
      sum += int.parse(nums[i]);
      counter++;
    }
  } else {
    for (int i = maxIndex + 1; i < minIndex; i++) {
      sum += int.parse(nums[i]);
      counter++;
    }
  }
  print(sum / counter);
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}