import 'package:flutter/material.dart';
import 'package:flutter_common_package/extensions/extensions.dart';
import 'package:simple_demo/share/core/utilities/utilities.dart';
import 'package:simple_demo/share/data/models/models.dart';

class ProductView extends StatefulWidget {
  const ProductView({
    Key? key,
    required this.product,
    this.onEdit,
  }) : super(key: key);

  final Product product;
  final VoidCallback? onEdit;

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {

  Product get _product => widget.product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_product.name),
      ),
      body: ListView(
        children: [
          ...UI.hpList(
            children: [
              Text(
                'Name: ${_product.name}',
              ),
              12.height,
              Text(
                'Price: ${_product.price.toStringAsFixed(2)}',
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: widget.onEdit == null ? null : FloatingActionButton(
        onPressed: () {
          widget.onEdit?.call();
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}

class _TestWidget1 extends StatefulWidget {
  const _TestWidget1({Key? key}) : super(key: key);

  @override
  State<_TestWidget1> createState() => _TestWidget1State();
}

class _TestWidget1State extends State<_TestWidget1> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


