import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async {  
  var numstask3 = File("numsTask3.txt");
  var content = numstask3.readAsStringSync();
  List<String> nums = content.split(';');
  print(nums);
  int min = 999;
  int minIndex = 0;
  int sum = 0;

  for (int i = 0; i < nums.length; ++i) {
    if (min > int.parse(nums[i])) {
      min = int.parse(nums[i]);
      minIndex = i;
    }
  }
  for (int i = 0; i < minIndex; i++) {
    sum += int.parse(nums[i]);
  }
  print(sum / minIndex);
}