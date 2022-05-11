import 'package:flutter/material.dart';
import 'package:flutter_widget_store/data/dummy_gridview_data.dart';
import 'package:flutter_widget_store/widget/gridview_category_item.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((e) => GridviewCategoryItem(e.title, e.color))
            .toList(),
      ),
    );
  }
}
