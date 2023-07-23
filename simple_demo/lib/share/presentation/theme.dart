import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  return ThemeData.from(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    useMaterial3: true,
  );
}
