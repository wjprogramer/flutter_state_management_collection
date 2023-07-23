import 'package:flutter/material.dart';
import 'package:simple_demo/apps/provider/app_1/pages/product_from_provider_page.dart';
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
          UI.navItem(context, 'Product (from provider)', () => ProductFromProviderPage()),
        ],
      ),
    );
  }

}




