part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class WeatherLoadEvent extends WeatherEvent {
  WeatherLoadEvent(this.location);

  final String location;

  @override
  List<Object> get props => [location];
}
