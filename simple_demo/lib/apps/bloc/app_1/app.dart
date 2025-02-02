import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:simple_demo/share/presentation/theme.dart';

import 'bloc/location/location_bloc.dart';
import 'bloc/weather/weather_bloc.dart';
import 'pages/home_page.dart';

/// Bad example from ref bottom.
///
/// In Flutter app development, managing bloc-to-bloc communication is a common
/// challenge Eg: A weather app where, weather summary widget needs to get weather
/// data based on the location shown in location widget.
///
/// As blocs exposes streams, it can be tempting to create a bloc that listens
/// to another bloc, as shown in the code below:
/// (weather_bloc.dart)
///
/// However, this introduces tight coupling between blocs leading to sibling
/// dependencies between two entities in the same architectural layer, which
/// hinders maintainability, testing and scalability.
///
/// Each bloc should have a clear set of responsibilities. A bloc should receive
/// information only through events(or methods in case of Cubit) and from injected
/// repositories provided during its construction.
///
/// When one bloc needs to respond to another bloc, we might want to push the
/// connection to a layer up (presentation) or a layer down (domain/repository
/// layer).
///
/// ref: https://medium.com/@saitejaerumandla/bloc-to-bloc-communication-in-flutter-3e6d2fba6fbf
class BlocApp1 extends StatelessWidget {
  BlocApp1({super.key});

  final locationBloc = LocationBloc();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider.value(value: locationBloc),
        BlocProvider(create: (_) => WeatherBloc(locationBloc)),
      ],
      child: MaterialApp(
        theme: getDefaultTheme(),
        home: HomePage(),
      ),
    );
  }
}
