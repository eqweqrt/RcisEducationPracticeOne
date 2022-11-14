import 'dart:io';

void main() {
final file = File ('numsTask4.txt');
var text = file.readAsStringSync();
List<String> list = [];
List<int> listInt = [];
int count = 0;
list = text.split(' ');

for (int i = 0; i < list.length; i++) {
  int number = int.parse(list[i]);
  listInt.add(number);
}
for (int i = 0; i < listInt.length - 1; i++)    {
  if (listInt[i] == listInt[i + 1]) {
    count += 1;
  }
}
print(count);
}
