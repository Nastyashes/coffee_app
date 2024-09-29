import 'package:coffee_app/src/presentation/bloc/location_bloc/location_event.dart';
import 'package:coffee_app/src/presentation/bloc/location_bloc/location_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial()) {
    on<RequestLocation>((event, emit) async {
      try {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        emit(LocationLoaded(position as String));
      } catch (error) {
        emit(LocationError("Не вдалося отримати локацію"));
      }
    });
  }
}
