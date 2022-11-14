import 'dart:io';

void main(List<String> arguments) {
    var map = {  
  };

  String nameTask;
  int numberTask = 0;
do{
  print(" Чтобы добавит задачу введите '1';\n Чтобы удалить задачу введите '2';\n Чтобы редактировать задачу введите '1', после номер задачи, а затем введите новое задание.\n\n Для выыхода из цикла отправьте пустую строку");
  
  String a = stdin.readLineSync()!;
  int b = int.parse(a);


  if(b == 1){
    print("Добавление задачи");
    print("Номер задачи:");

    nameTask = stdin.readLineSync()!;
    numberTask = int.parse(nameTask);

    map.addAll({"$numberTask" : " "});
    print("Задача:");

    String task = stdin.readLineSync()!;
    map.addAll({"$numberTask" : "$task"});
  }

  if(b == 2){
    print("Удаление задачи");
    print("Введите Номер задачи:");
    nameTask = stdin.readLineSync()!;
    numberTask = int.parse(nameTask);

    if(nameTask == nameTask){
      print("Удалить Задачу $nameTask? да/нет");
      String delTask = stdin.readLineSync()!;
      if(delTask.length == 2){
          dynamic res = map.remove('$nameTask');
          print("Задача удалена.\n");
      }
    }
    else{
      print("Неверный номер задачи!");
    }
  }
  print("$map\n");
}
while (numberTask != '');

}