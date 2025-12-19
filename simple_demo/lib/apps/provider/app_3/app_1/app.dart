import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_demo/apps/provider/app_3/app_1/view_models/product_list_view_model.dart';
import 'package:simple_demo/share/presentation/theme.dart';

import 'pages/home_page.dart';

class ProviderApp3 extends StatelessWidget {
  const ProviderApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductListViewModel()),
      ],
      child: MaterialApp(
        theme: getDefaultTheme(),
        home: HomePage(),
      ),
    );
  }
}
