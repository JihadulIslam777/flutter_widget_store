import 'package:flutter/material.dart';
import 'package:flutter_widget_store/pages/category_three_page.dart';
import 'package:flutter_widget_store/pages/category_two_page.dart';
import 'package:flutter_widget_store/pages/category_one_page.dart';
import 'package:flutter_widget_store/services/navigation_bar_provider.dart';
import 'package:flutter_widget_store/widget/drawer_list_tile.dart';
import 'package:provider/provider.dart';

class NavBarPage extends StatelessWidget {
  NavBarPage({Key? key}) : super(key: key);

  List currentNavBar = [
    const CategoryOne(),
    const CategoryTwo(),
    const CategoryThree()
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget Store'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              child: Text('Header'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            DrawerListTile(title: 'Item 1', icon: Icons.alarm),
            DrawerListTile(title: 'Item 2', icon: Icons.message),
            DrawerListTile(title: 'Item 3', icon: Icons.email),
            DrawerListTile(title: 'Item 4', icon: Icons.phone),
            DrawerListTile(title: 'Item 5', icon: Icons.camera),
            DrawerListTile(title: 'Item 6', icon: Icons.watch),
          ],
        ),
      ),
      body: currentNavBar[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Category 1'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Category 2'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Category 3'),
        ],
      ),
    );
  }
}
