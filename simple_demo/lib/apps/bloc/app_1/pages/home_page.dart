import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_demo/apps/bloc/app_1/bloc/location/location_bloc.dart';

import '../bloc/weather/weather_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Builder(
            builder: (context) {
              final weatherData = context.select((WeatherBloc bloc) => bloc.state.data);
              return Text('Weather: $weatherData');
            }
          ),
          Builder(
            builder: (context) {
              final location = context.select((LocationBloc bloc) => bloc.state.location);
              return Text('Location: $location');
            }
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: ['A', 'B', 'C'].map((location) {
                return ElevatedButton(
                  onPressed: () {
                    context.read<LocationBloc>().add(ChangeLocationEvent(location));
                  },
                  child: Text(location),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
