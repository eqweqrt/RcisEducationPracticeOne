import 'dart:io';
void main() {

final file = File ('numsTask3.txt');
var text = file.readAsStringSync();
List<String> list = [];
List <int> height = [];

int count = 0;

int square = 0;

list.add(text);
list = text.split(" ");

for (int i = 0; i < list.length; i++) {
  int number = int.parse(list[i]);
  height.add(number);
}

for (int i = 0; i < height.length; i++) { 
  for (int j = 0; j < height.length; j++) { 
    if (height[i] > height[j]) {
      if (i >= j) {
        square = height[j] * (i - 5);
      }
      else {
      square = height[j] * (j - i);
      }
    }
  }
  if (count < square) {
    count = square;
  }
  square = 0;
}

print(height);
print(count);
}
