import 'package:flutter/widgets.dart';

sealed class AppData {
  AppData({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;
}

class AppDataItem extends AppData {
  AppDataItem({
    required super.id,
    required super.name,
    required this.builder,
  });

  final WidgetBuilder builder;
}

class AppDataGroup extends AppData {
  AppDataGroup({
    required super.id,
    required super.name,
    required this.apps,
  });

  final List<AppData> apps;
}