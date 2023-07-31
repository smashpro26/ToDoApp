import 'dart:ffi';

import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  final _myBox = Hive.box("mybox");

  void createInitialData() {
    toDoList = [
      ["Press the plus button to add a task", false],
      ["Swipe left on a task to delete it", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TOODLIST", toDoList);
  }
}
