import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_demo/apps/provider/app_2/view_models/cart_model.dart';
import 'package:simple_demo/apps/provider/app_2/view_models/product_list_model.dart';
import 'package:simple_demo/share/presentation/theme.dart';

import 'pages/home_page.dart';

class ProviderApp2 extends StatelessWidget {
  const ProviderApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartModel()),
        ChangeNotifierProvider(create: (context) => ProductListModel()),
        // Provider(create: (context) => SomeOtherClass()),
      ],
      child: MaterialApp(
        theme: getDefaultTheme(),
        home: HomePage(),
      ),
    );
  }
}
