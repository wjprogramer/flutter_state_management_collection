import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_demo/apps/built_in/app_1/view_models/view_models.dart';
import 'package:simple_demo/share/constants.dart';
import 'package:simple_demo/share/core/utils/utils.dart';
import 'package:simple_demo/share/data/models/models.dart';

class ProductInspectPage extends StatefulWidget {
  const ProductInspectPage({Key? key}) : super(key: key);

  @override
  State<ProductInspectPage> createState() => _ProductInspectPageState();
}

class _ProductInspectPageState extends State<ProductInspectPage> {
  Product _product = Product(name: 'Product 1', price: 47.5);

  @override
  Widget build(BuildContext context) {
    return ProductViewModel(
      product: _product,
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                _product.name,
              ),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              children: [
                _NameLabel(value: _product.name,),
                _PriceLabel(),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                final v = Random().nextDouble() * 1000;

                setState(() {
                  _product = _product.copyWith(
                    price: v,
                    name: 'Product ${v.toInt()}'
                  );
                });
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
    return Text(
      'Price: ${ProductViewModel.of(context).product.price.toStringAsFixed(2)}',
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
    // 此元件沒有使用到 InheritedWidget，因此 InheritedWidget 更新的時候，method 不會被呼叫
    info('[name/didChangeDependencies] called');
  }

  @override
  Widget build(BuildContext context) {
    return Text('Name: ${widget.value}');
  }
}






