import 'package:flutter/material.dart';
import 'package:simple_demo/share/presentation/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/home_page.dart';

// Ref: https://github.com/rrousselGit/riverpod/tree/master/packages/flutter_riverpod/example

class RiverpodApp1 extends StatelessWidget {
  const RiverpodApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        theme: getDefaultTheme(),
        home: HomePage(),
      ),
    );
  }
}
