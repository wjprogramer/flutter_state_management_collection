import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:simple_demo/share/data/fake_data.dart';
import 'package:simple_demo/share/data/models/models.dart';

class ProductListModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<Product> _items = [];

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  /// The current total price of all items (assuming all items cost $42).
  int get totalPrice => _items.length * 42;

  Future<void> refresh() async {
    _items.clear();
    notifyListeners();

    _items.addAll(
      await asyncGenerateProducts(10),
    );
    notifyListeners();
  }

  Future<void> load() async {
    _items.addAll(
      await asyncGenerateProducts(10),
    );
    notifyListeners();
  }



}