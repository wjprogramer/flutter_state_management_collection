part of 'location_bloc.dart';

sealed class LocationEvent extends Equatable {
  const LocationEvent();
}

class ChangeLocationEvent extends LocationEvent {
  ChangeLocationEvent(this.location);

  final String location;

  @override
  List<Object> get props => [location];
}
