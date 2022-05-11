import 'package:flutter/material.dart';
import 'package:flutter_widget_store/services/reorderable_listview_provider.dart';
import 'package:provider/provider.dart';

class ReorderableListViewPage extends StatelessWidget {
  ReorderableListViewPage({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Consumer<ReorderableListViewProvider>(
      builder: (context, value, child) => Container(
        padding: const EdgeInsets.all(8.0),
        child: ReorderableListView(
          children: [
            for (final item in value.tasks)
              Card(
                color: Colors.blue.shade100,
                key: ValueKey(item),
                elevation: 5,
                child: ListTile(
                  title: Text(item),
                  leading: const Icon(
                    Icons.work,
                    color: Colors.black,
                  ),
                ),
              )
          ],
          onReorder: value.onReorder,
        ),
      ),
    );
  }
}
