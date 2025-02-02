import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../location/location_bloc.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(LocationBloc locationBloc) : super(WeatherState('Empty')) {
    // Keypoint: 耦合性太高
    // although this is possible, and seem straight-forward, this is would
    // make the blocs tightly coupled and make it difficult to maintain as the
    // complexity of your app grows
    locationBloc.stream.listen((state) {
      add(WeatherLoadEvent(state.location));
    });

    on<WeatherEvent>((event, emit) => switch (event) {
      WeatherLoadEvent() => _loadWeather(event, emit),
    });
  }

  late final StreamSubscription blocBSubscription;

  @override
  Future<void> close() {
    blocBSubscription.cancel();
    return super.close();
  }

  void _loadWeather(WeatherLoadEvent event, Emitter<WeatherState> emit) {
    emit(WeatherState('Weather for ${event.location}'));
  }
}
