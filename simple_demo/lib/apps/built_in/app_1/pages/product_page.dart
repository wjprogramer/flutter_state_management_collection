import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_demo/apps/built_in/app_1/view_models/view_models.dart';
import 'package:simple_demo/share/data/models/models.dart';
import 'package:simple_demo/share/views/product_view.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Product _product = Product(name: 'Product 1', price: 47.5);

  @override
  Widget build(BuildContext context) {
    return ProductViewModel(
      product: _product,
      child: Builder(
        builder: (context) {
          return ProductView(
            product: ProductViewModel.of(context).product,
          );
        },
      ),
    );
  }
}
