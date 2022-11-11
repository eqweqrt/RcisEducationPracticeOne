import 'dart:io';
void main() {
var words = [];
String word = " ";
int Min = 0;
int Max = 0;
int a = 0;

int minLength = 99;
int maxLength = 0;

  while (word != ""){
    word = stdin.readLineSync()!;
    words.add(word);

    if (word.length < minLength && word.length != 0){
      minLength = word.length;
      Min = a;
    }
    if (word.length > maxLength && word.length != 0){
      maxLength = word.length;
      Max = a;
    }
    a++;
  }
  print("Самое короткое элемент : ${words[Min]}, самое длинное элемент : ${words[Max]}");
}