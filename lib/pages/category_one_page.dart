import 'package:flutter/material.dart';
import 'package:flutter_widget_store/widget/custom_gridview.dart';
import 'package:flutter_widget_store/widget/custom_pageview.dart';
import 'package:flutter_widget_store/widget/reorderable_list_view.dart';

class CategoryOne extends StatelessWidget {
  const CategoryOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Colors.amber,
            tabs: [
              Tab(text: 'ListView'),
              Tab(text: 'Gridview'),
              Tab(text: 'PageView'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ReorderableListViewPage(),
            CustomGridView(),
            const CustomPageview(),
          ],
        ),
      ),
    );
  }
}
