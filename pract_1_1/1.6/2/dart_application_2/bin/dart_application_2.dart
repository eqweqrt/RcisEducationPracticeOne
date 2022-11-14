import 'dart:io';

void main() {
  final file = File('numsTask2.txt');
  var text = file.readAsStringSync();
  String mass = " ";

for (int i = 0; i < text.length; i++) {
  if(text[i] == (""));{
    mass = text[i];
  }
  print(mass);
}
}

// import 'dart:io';

// void main() {
//   final file = File('numsTask2.txt');
//    text = file.readAsStringSync();
//   List <String> mass = [];

// for (int i = 0; i < text.length; i++) {
//   if(text[i] == ("")){
//     mass.add(text[i]);

//   }
//   print(mass);
// }

// }
