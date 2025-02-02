import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationState(location: 'A')) {
    on<LocationEvent>((event, emit) => switch (event) {
      ChangeLocationEvent() => _changeLocation(event, emit),
    });
  }

  void _changeLocation(ChangeLocationEvent event, Emitter<LocationState> emit) {
    emit(LocationState(location: event.location));
  }
}
