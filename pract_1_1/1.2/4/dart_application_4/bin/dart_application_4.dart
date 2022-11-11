import 'dart:math';
void main() {
  double Average = 0;
  var ListAverage = [];

  var temperature = List.generate(12, (int index) => List.generate(30, (int index) => Random().nextInt(40) - 20, growable: false), growable: false);
  for (int i = 0; i < 12; i++){
    print(temperature[i]);
    Average += temperature [i] [i]; 
    ListAverage.add(Average);
  }
  FAverage(temperature);
}

void FAverage (var List){
  double Average = 0;
  var ListAverage = [];

  for (int i = 0; i < 12; i++){
    Average += List [i] [i]; 
    ListAverage.add(Average);
  } 
  ListAverage.sort();
  print(ListAverage);
}