import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_demo/share/data/models/models.dart';
import 'package:simple_demo/share/views/product_view.dart';

class ProductFromProviderPage extends StatefulWidget {
  const ProductFromProviderPage({Key? key}) : super(key: key);

  @override
  State<ProductFromProviderPage> createState() => _ProductFromProviderPageState();
}

class _ProductFromProviderPageState extends State<ProductFromProviderPage> {
  @override
  Widget build(BuildContext context) {
    return Provider<Product>.value(
      value: Product(name: 'Product 1', price: 123),
      builder: (context, _) {
        final product = Provider.of<Product>(context);

        return ProductView(
          product: product,
        );
      },
    );
  }
}



