import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  if (kDebugMode) {
    Completer;
  }

  return ThemeData.from(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    useMaterial3: false,
  );
}



