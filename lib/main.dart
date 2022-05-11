import 'package:flutter/material.dart';
import 'package:flutter_widget_store/pages/category_one_page.dart';
import 'package:flutter_widget_store/pages/login_signup_page.dart';
import 'package:flutter_widget_store/pages/nav_bar_page.dart';
import 'package:flutter_widget_store/services/navigation_bar_provider.dart';
import 'package:flutter_widget_store/services/reorderable_listview_provider.dart';
import 'package:flutter_widget_store/widget/reorderable_list_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Store',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => BottomNavigationBarProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ReorderableListViewProvider(),
          ),
        ],
        child: NavBarPage(),
      ),
    );
  }
}
