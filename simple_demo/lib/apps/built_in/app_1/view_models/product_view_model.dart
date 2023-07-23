import 'package:flutter/material.dart';
import 'package:simple_demo/share/data/models/models.dart';

class ProductViewModel extends InheritedWidget {
  const ProductViewModel({
    super.key,
    required super.child,
    required this.product,
  });

  final Product product;

  static ProductViewModel? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProductViewModel>();
  }

  static ProductViewModel of(BuildContext context) {
    final ProductViewModel? result = maybeOf(context);
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ProductViewModel oldWidget) => product != oldWidget.product;

}