import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_demo/apps/provider/app_2/view_models/product_list_model.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // final productListModel = context.read<ProductListModel>();
      // productListModel.refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
    );

    // 等同 Provider.of;
    final productListModel = context.watch<ProductListModel>();

    final products = productListModel.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(
              '\$' + products[index].price.toStringAsFixed(2),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          productListModel.refresh();
        },
        child: Icon(
          Icons.refresh,
        ),
      ),
    );
  }
}
