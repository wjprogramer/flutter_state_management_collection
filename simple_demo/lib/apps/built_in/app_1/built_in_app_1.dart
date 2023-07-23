import 'package:flutter/material.dart';
import 'package:simple_demo/share/presentation/theme.dart';

import 'pages/home_page.dart';

class BuiltInApp1 extends StatelessWidget {
  const BuiltInApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getDefaultTheme(),
      home: HomePage(),
    );
  }
}
