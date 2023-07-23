import 'package:flutter/material.dart';
import 'package:flutter_common_package/flutter_common_package.dart';
import 'package:simple_demo/share/global.dart';

class UI {
  UI._();

  static Widget hp({ required Widget? child }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: child,
    );
  }

  static Widget hp2({ required Widget? child }) {
    final context = navigatorKey.currentContext!;
    final listTileTheme = Theme.of(context).listTileTheme;
    // 寫死在 ListTile 裡
    const EdgeInsets defaultContentPadding = EdgeInsets.symmetric(horizontal: 16.0);
    final TextDirection textDirection = Directionality.of(context);

    print(defaultContentPadding.left);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: listTileTheme.contentPadding?.resolve(textDirection).left
            ?? defaultContentPadding.left,
      ),
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

  static Widget subtitle(String t) {
    final theme = Theme.of(navigatorKey.currentContext!);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 4,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Opacity(
                opacity: 0.5,
                child: Text(
                  t,
                  maxLines: 1,
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: Container(
                  width: 4,
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
        4.width,
        Expanded(
          child: Text(
            t,
          ),
        ),
      ],
    );
  }

}