
import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async {  
  
try{
  var numstask2 = File("numsTask2.txt");
  var content = numstask2.readAsStringSync();
  List<String> nums = content.split(";");
  print(nums);
  bool isSorted = false;
  while (!isSorted) {
    isSorted = true;
    for (int i = 0; i < nums.length - 1; i++) {
      if (double.parse(nums[i]) > double.parse(nums[i + 1])) {
        var temp = nums[i];
        nums[i] = nums[i + 1];
        nums[i + 1] = temp;
        isSorted = false;
      }
    }
  }
  numstask2.writeAsStringSync(nums.toString());
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}