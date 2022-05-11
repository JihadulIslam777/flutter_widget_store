import 'package:flutter/material.dart';

class ReorderableListViewProvider extends ChangeNotifier {
  List<String> tasks = [
    "A for Apple",
    "B for Ball",
    "C for Cat",
    "D for Doll",
    "E for Egg",
    "F for Friend",
    "G for Goat",
    "H for Hand",
  ];

  void onReorder(oldIndex, newIndex) {
    if (newIndex > oldIndex) {
      newIndex = newIndex - 1;
    }
    final task = tasks.removeAt(oldIndex);
    tasks.insert(newIndex, task);
    notifyListeners();
  }
}
