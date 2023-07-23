import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:simple_demo/share/data/models/models.dart';

class ProductListenableViewModel extends ChangeNotifier {
  ProductListenableViewModel({
    required Product product,
  }) : _product = product;

  Product _product;
  Product get product => _product;

  void updatePrice() {
    final v = Random().nextDouble() * 1000;
    _product = _product.copyWith(
      price: v,
      name: 'Product ${v.toInt()}',
    );
    notifyListeners();
  }

}