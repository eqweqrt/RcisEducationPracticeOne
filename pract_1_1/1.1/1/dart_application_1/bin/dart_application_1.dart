import 'dart:io';
import 'dart:math';

void main() {

  int min = 0;
  var nums = List.generate(10, (int index) => Random().nextInt(20) -10, growable:true);
  
  for(int i =0 ; i < nums.length; i++){
    if (nums [i] < min){
      min = nums [i];
    }
  }
  print(min);
}