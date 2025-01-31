import 'package:flutter/material.dart';
import 'package:simple_demo/apps/provider/app_1/pages/home_page.dart';
import 'package:simple_demo/share/presentation/theme.dart';

class ProviderApp1 extends StatelessWidget {
  const ProviderApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getDefaultTheme(),
      home: HomePage(),
    );
  }
}
