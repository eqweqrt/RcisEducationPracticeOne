import 'dart:io';
import 'dart:math';

void main() {
  final file = File ('numsTask2.txt');
  var text = file.readAsStringSync();
   List <String> list = [];
   List <int> listInt = [];
   int zero = 0;
   int count = 0;

list.add(text);
list = text.split(';');

for (int i = 0; i < list.length; i++){
   int number = int.parse(list[i]);
   listInt.add(number);
}

for (int i = 0; i < listInt.length; i++){
   if (listInt[i] == 0) {
    zero = i;
   break;
   }
}
for (int i = 0; i < zero; i++){
  stdout.write('${listInt[i]},   ');
  if (listInt[i] > 0) {
    count += listInt[i];
  }
}
print(count);
}
