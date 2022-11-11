import 'dart:io';
import 'dart:math';
import 'dart:async';
import 'dart:convert';
import 'dart:core';


void main() async {
  Map map = {
    'Январь': List.generate((30), (j) => Random().nextInt(5) - 35),
    "Февраль": List.generate((30), (j) => Random().nextInt(5) - 30),
    'Март': List.generate((30), (j) => Random().nextInt(10) - 5),
    'Апрель': List.generate((30), (j) => Random().nextInt(10) + 5),
    'Май': List.generate((30), (j) => Random().nextInt(10) + 5),
    'Июнь': List.generate((30), (j) => Random().nextInt(20) + 15),
    'Июль': List.generate((30), (j) => Random().nextInt(20) + 15),
    'Август': List.generate((30), (j) => Random().nextInt(20) + 15),
    'Сентябрь': List.generate((30), (j) => Random().nextInt(5) + 10),
    'Октябрь': List.generate((30), (j) => Random().nextInt(5) + 10),
    'Ноябрь': List.generate((30), (j) => Random().nextInt(5) - 7),
    'Декабрь': List.generate((30), (j) => Random().nextInt(1) - 20)
  };
  sred(map);
}

Map sred(map) {
  var otvet = {
    'Январь': 0,
    "Февраль": 0,
    'Март': 0,
    'Апрель': 0,
    'Май': 0,
    'Июнь': 0,
    'Июль': 0,
    'Август': 0,
    'Сентябрь': 0,
    'Октябрь': 0,
    'Ноябрь': 0,
    'Декабрь': 0
  };
  for (var key in map.keys) {
    double sum = 0;
    for (int i = 0; i < 30; i++) {
      sum += map[key][i];
    }
    otvet[key] = (sum ~/ 30);
  }
  for (var item in otvet.entries) {
    print("${item.key} - ${item.value}");
  }
  return otvet;
}