import 'package:flutter/material.dart';
import 'package:flutter_common_package/flutter_common_package.dart';

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

  static Widget navItem(
    BuildContext context,
    String text,
    Widget Function() pageBuilder,
  ) {
    return ListTile(
      title: Text(text),
      onTap: () {
        push(context, pageBuilder());
      },
    );
  }

}