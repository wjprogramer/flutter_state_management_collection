import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_demo/share/presentation/theme.dart';

import 'pages/home_page.dart';

class GetXApp1 extends StatelessWidget {
  const GetXApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: getDefaultTheme(),
      home: HomePage(),
    );
  }
}
