import 'package:flutter/material.dart';
import 'package:flutter_common_package/utils/utils.dart';
import 'package:simple_demo/apps/provider/app_2/pages/product_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: [
          TextButton(
            onPressed: () {
              push(context, ProductListPage());
            },
            child: Text('Go'),
          ),
        ],
      ),
    );
  }
}




