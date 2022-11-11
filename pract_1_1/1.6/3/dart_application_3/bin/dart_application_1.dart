import 'dart:io';
import 'dart:core';

void main() {
  int a = 57;
  if(a % 2 == 0 || a % 10 == 0){
    print("Число четное и кратно 10");
  }
  else{
    print("Число либо нечетное, либо некратно 10");    
  }

}
