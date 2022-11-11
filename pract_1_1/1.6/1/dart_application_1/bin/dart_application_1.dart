import 'dart:io';
void main()  {

  var count = [];
  final file = File('numsTask1.txt');
  var text = file.readAsStringSync();
  
  List<String> nums = text.split(" ");
  print(nums);

  for(int i = 0; i<nums.length;i++){
    var parts = nums[i].split(' ');
    var txtCount = parts[0].length;
    if(txtCount % 2 != 0){
      count = parts;
    }
  print(count);
  }
}