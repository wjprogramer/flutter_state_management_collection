import 'package:flutter/material.dart';
import 'package:simple_demo/share/presentation/theme.dart';

import 'pages/home_page.dart';

class EmptyApp1 extends StatelessWidget {
  const EmptyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getDefaultTheme(),
      home: HomePage(),
    );
  }
}
