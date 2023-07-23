import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_common_package/flutter_common_package.dart';
import 'package:simple_demo/apps/built_in/app_1/others/data_listen.dart';
import 'package:simple_demo/apps/built_in/app_1/view_models/view_models.dart';
import 'package:simple_demo/share/core/utilities/utilities.dart';
import 'package:simple_demo/share/core/utils/utils.dart';
import 'package:simple_demo/share/data/models/models.dart';
import 'package:simple_demo/share/views/product_view.dart';

class ProductListenablePage extends StatefulWidget {
  const ProductListenablePage({Key? key}) : super(key: key);

  @override
  State<ProductListenablePage> createState() => _ProductListenablePageState();
}

class _ProductListenablePageState extends State<ProductListenablePage> {
  final _model = ProductListenableViewModel(
    product: Product(name: 'Product 1', price: 47.5),
  );

  @override
  Widget build(BuildContext context) {
    return DataListen<ProductListenableViewModel>(
      listenable: _model,
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(DataListen.of<ProductListenableViewModel>(context)?.product.name ?? ''),
            ),
            body: ListView(
              children: [
                16.height,
                ...UI.hpList(
                  children: [
                    _NameLabel(value: DataListen.of<ProductListenableViewModel>(context)?.product.name ?? ''),
                    _PriceLabel(),
                  ],
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                DataListen.of<ProductListenableViewModel>(context)?.updatePrice();
              },
              child: Icon(Icons.edit),
            ),
          );
        },
      ),
    );
  }
}

class _PriceLabel extends StatefulWidget {
  const _PriceLabel({Key? key}) : super(key: key);

  @override
  State<_PriceLabel> createState() => _PriceLabelState();
}

class _PriceLabelState extends State<_PriceLabel> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    info('[price/didChangeDependencies] called');
  }

  @override
  Widget build(BuildContext context) {
    info('[price/build] called');
    return Text(
      'Price: ${DataListen.of<ProductListenableViewModel>(context)?.product.price.toStringAsFixed(2)}',
    );
  }
}

class _NameLabel extends StatefulWidget {
  const _NameLabel({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;

  @override
  State<_NameLabel> createState() => _NameLabelState();
}

class _NameLabelState extends State<_NameLabel> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    info('[name/didChangeDependencies] called');
  }

  @override
  Widget build(BuildContext context) {
    info('[name/build] called');
    return Text('Name: ${widget.value}');
  }
}
