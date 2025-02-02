import 'package:flutter/material.dart';
import 'package:simple_demo/apps/built_in/app_1/built_in_app_1.dart';
import 'package:simple_demo/apps/mobx/app_1/mobx_app_1.dart';
import 'package:simple_demo/apps/provider/app_1/provider_app_1.dart';
import 'package:simple_demo/apps/provider/app_2/provider_app_2.dart';
import 'package:simple_demo/apps/riverpod/app_1/riverpod_app_1.dart';
import 'package:simple_demo/share/global.dart';
import 'package:simple_demo/share/presentation/theme.dart';

import 'app_root/models/models.dart';
import 'app_root/widgets/widgets.dart';
import 'apps/bloc/app_1/app.dart';
import 'apps/bloc/app_2/app.dart';
import 'apps/bloc/app_3/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    DraggableScrollableSheet;
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: getDefaultTheme(),
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  _HomePage();

  final _data = <AppData>[
    AppDataGroup(
      id: 'bloc',
      name: 'Bloc / Bloc to Bloc Communication',
      apps: [
        AppDataItem(
          id: 'bloc.1',
          name: 'Bad Example (耦合性太高)',
          builder: (_) => BlocApp1(),
        ),
      ],
    ),
    AppDataItem(
      id: 'bloc.2',
      name: 'Bloc App 2',
      builder: (_) => BlocApp2(),
    ),
    AppDataItem(
      id: 'bloc.3',
      name: 'Bloc App 3',
      builder: (_) => BlocApp3(),
    ),
    AppDataItem(
      id: 'built-in.1',
      name: 'Built-in App 1',
      builder: (_) => BuiltInApp1(),
    ),
    AppDataItem(
      id: 'mobx.1',
      name: 'Mobx App 1',
      builder: (_) => MobxApp1(),
    ),
    AppDataItem(
      id: 'provider.1.basic',
      name: 'Provider App 1',
      builder: (_) => ProviderApp1(),
    ),
    AppDataItem(
      id: 'provider.2.with_change_notifier',
      name: 'Provider App 2',
      builder: (_) => ProviderApp2(),
    ),
    AppDataItem(
      id: 'riverpod.1',
      name: 'Riverpod App 1',
      builder: (_) => RiverpodApp1(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple

    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: ListView(
        children: [
          for (final data in _data)
            AppDataView(data: data),
        ],
      ),
    );
  }
}
