import 'package:flutter/material.dart';
import 'package:simple_demo/apps/bloc/app_1/bloc_app_1.dart';
import 'package:simple_demo/apps/built_in/app_1/built_in_app_1.dart';
import 'package:simple_demo/apps/provider/app_1/provider_app_1.dart';
import 'package:simple_demo/share/global.dart';
import 'package:simple_demo/share/presentation/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: getDefaultTheme(),
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, Widget Function()> _appOf = {
      // https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple
      // 'app1': () => App1(),
      'built-in.1': () => BuiltInApp1(),
      'provider.1': () => ProviderApp1(),
      'bloc.1': () => BlocApp1(),
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: ListView(
        children: [
          ..._appOf.entries.map((entry) {
            return ListTile(
              title: Text(entry.key),
              onTap: () {
                // runApp(entry.value());
                Navigator.push(context, MaterialPageRoute(builder: (_) => entry.value()));
              },
            );
          }),
        ],
      ),
    );
  }
}


