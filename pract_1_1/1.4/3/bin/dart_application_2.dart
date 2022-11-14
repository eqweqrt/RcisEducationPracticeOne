import 'dart:io';
import 'dart:math';

void main() {
  final file = File('numsTask3.txt');
  var text = file.readAsStringSync();
  List<String> list = [];
  List<int> listInt = [];
  List<int> zero = [];
  int maxList = 0;
  int minList = 0;
  int indexZero = 0;
  int count = 0;
  list.add(text);
  list = text.split(',');

for (int i = 0; i < list.length; i++) {
   int number = int.parse(list[i]);
   listInt.add(number);
   }
for (int i = 0; i < listInt.length; i++) {
  if (listInt[i] == 0) {
      indexZero = i;
   break;
   }
   }
for (int i = 0; i < indexZero; i++) {
   int a = listInt[i];
   zero.add(a);
   }
   maxList = zero.reduce(max);
   minList = zero.reduce(min);
count = (maxList / minList).floor();
print(count);
}
