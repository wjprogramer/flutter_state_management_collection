part of 'location_bloc.dart';

class LocationState extends Equatable {
  const LocationState({
    required this.location,
  });

  final String location;

  @override
  List<Object?> get props => [location];
}
