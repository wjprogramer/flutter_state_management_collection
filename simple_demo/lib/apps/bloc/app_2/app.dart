import 'package:flutter/material.dart';
import 'package:simple_demo/share/presentation/theme.dart';

import 'pages/home_page.dart';

class BlocApp2 extends StatelessWidget {
  const BlocApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getDefaultTheme(),
      home: HomePage(),
    );
  }
}
