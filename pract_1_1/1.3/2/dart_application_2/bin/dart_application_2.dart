import 'dart:io';
void main() async {

  final file = File('nums.txt');
  var text = file.readAsStringSync();
  
  List<String> nums = text.split(" ");
  print(nums);
  
  for (int i = 0; i < nums.length; ++i) {
    if (int.parse(nums[i]) % 2 == 0) {
      nums.remove(nums[i]);
    }
  }
  print(nums);
  file.writeAsString("$nums");
}