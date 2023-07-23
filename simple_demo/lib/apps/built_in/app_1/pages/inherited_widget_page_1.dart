import 'package:flutter/material.dart';
import 'package:simple_demo/apps/built_in/app_1/view_models/view_models.dart';
import 'package:simple_demo/share/data/models/models.dart';
import 'package:simple_demo/share/views/product_view.dart';

class InheritedWidgetPage1 extends StatelessWidget {
  const InheritedWidgetPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductViewModel(
      product: Product(name: 'Product 1', price: 47.5),
      child: Builder(
        builder: (context) {

          return ProductView(product: ProductViewModel.of(context).product);
        },
      ),
    );
  }
}
