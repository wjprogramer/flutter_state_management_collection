part of 'weather_bloc.dart';

class WeatherState extends Equatable {
  const WeatherState(this.data);

  final String data;

  @override
  List<Object> get props => [data];
}
