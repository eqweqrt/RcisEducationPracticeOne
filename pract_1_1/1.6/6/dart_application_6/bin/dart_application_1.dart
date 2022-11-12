import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {

  Random random = Random();
  List<double> originList = [];

  for (int i = 0; i < 20; i++) {
    originList.add((random.nextInt(200) - 100).toDouble());
  }

  List<double> plusList = [];
  List<double> minusList = [];

  for (int i = 0; i < originList.length; i++) {
    if (originList[i] >= 0) {
      plusList.add(originList[i]);
    } else {
      minusList.add(originList[i]);
    }
  }

  print("Положительные - ${plusList}");
  print("Отрицательные - ${minusList}");

}
