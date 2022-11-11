import 'dart:io';
import 'dart:core';
void main() {
  int a = 2;
  int c = 0;

  for(int i = 0; i < 999; i++){
  int b = int.parse(stdin.readLineSync()!);
    if(b >= 0){
      if(b % a == 0){
        c += b;
      }
    }
    else{
      break;
    }
  }
}

