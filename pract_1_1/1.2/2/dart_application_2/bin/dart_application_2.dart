void main() {
 
  int a = 1;
  var nums = List.filled(100, a);

  for (int i = 1; i < nums.length; i++){
    a = a + 2;
    nums[i] = a;
  }
  print(nums);
}