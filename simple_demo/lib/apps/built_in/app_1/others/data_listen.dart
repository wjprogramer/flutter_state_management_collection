import 'package:flutter/material.dart';

class DataListen<T extends Listenable> extends InheritedNotifier {

  const DataListen({
    required super.child,
    required this.listenable,
    super.key,
  }) : super(notifier: listenable);

  final T listenable;

  static T? of<T extends Listenable>(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<DataListen<T>>()
        ?.listenable;
  }

  static T? ofData<T extends Listenable>(BuildContext context) {
    return (context
        .getElementForInheritedWidgetOfExactType<DataListen<T>>()
        ?.widget as DataListen<T>?)
        ?.listenable;
  }

}