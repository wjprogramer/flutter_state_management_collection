import 'package:flutter/material.dart';

class UI {
  UI._();

  static Widget hp({ required Widget? child }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: child,
    );
  }

  static List<Widget> hpList({ required List<Widget> children }) {
    return children.map((e) => hp(child: e)).toList();
  }

}