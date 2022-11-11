void main() {
 
  int a = 45;
  var nums = List.filled(100, a);

  for (int i = 0; i < nums.length; i++){
    a = a - 3;
    nums[i] = a;
  }
  print(nums);
}