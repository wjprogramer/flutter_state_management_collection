import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_demo/apps/provider/app_1/pages/product_from_provider_page.dart';
import 'package:simple_demo/share/data/models/models.dart';
import 'package:flutter_common_package/flutter_common_package.dart';

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
          _item(context, 'Product (from provider)', () => ProductFromProviderPage()),
        ],
      ),
    );
  }

  Widget _item(
    BuildContext context,
    String text,
    Widget Function() pageBuilder,
  ) {
    return ListTile(
      title: Text(text),
      onTap: () {
        push(context, pageBuilder());
      },
    );
  }
}




