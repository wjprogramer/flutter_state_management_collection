import 'package:flutter/material.dart';
import 'package:flutter_common_package/flutter_common_package.dart';
import 'package:simple_demo/apps/built_in/app_1/pages/product_inspect_page.dart';
import 'package:simple_demo/apps/built_in/app_1/pages/product_listenable_page.dart';
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
          16.height,
          UI.hp2(
            child: UI.subtitle('InheritedWidget'),
            // 由 Parent Widget setState
          ),
          16.height,
          UI.navItem(context, 'InheritedWidget', () => ProductPage()),
          UI.navItem(context, 'InheritedWidget with Edit', () => ProductInspectPage()),
          16.height,
          UI.hp2(
            child: UI.subtitle('InheritedNotifier'),
          ),
          UI.navItem(context, 'ChangeNotifier', () => ProductListenablePage()),
          16.height,
        ],
      ),
    );
  }
}




