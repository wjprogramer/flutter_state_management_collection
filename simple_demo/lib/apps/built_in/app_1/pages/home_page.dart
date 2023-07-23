import 'package:flutter/material.dart';
import 'package:simple_demo/apps/built_in/app_1/pages/product_inspect_page.dart';
import 'package:simple_demo/apps/built_in/app_1/pages/product_page.dart';
import 'package:simple_demo/share/core/utilities/utilities.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: [
          UI.navItem(context, 'InheritedWidget Usage', () => ProductPage()),
          UI.navItem(context, 'InheritedWidget Inspect Usage', () => ProductInspectPage()),
        ],
      ),
    );
  }
}




