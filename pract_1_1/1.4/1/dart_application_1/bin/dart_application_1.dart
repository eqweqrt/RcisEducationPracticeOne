import 'dart:io';
void main() async {


try{
  int n = int.parse(stdin.readLineSync()!);
  int a = 1;
  var nums = [];
  
  for(int i = 1; i< n; i++){
    if(i % 3 == 0){
      nums.add(i);
      a *= i;
    }
  }
  print(nums);
  print(a);
}
catch(e){
         print("Возникло исключение $e");
    }
    print("Завершение программы");
}