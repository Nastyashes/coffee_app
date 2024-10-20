import 'package:bloc/bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

abstract class LocationEvent {}

class GetLocation extends LocationEvent {}

abstract class LocationState {}

class LocationInitial extends LocationState {}

class LocationLoading extends LocationState {}

class LocationLoaded extends LocationState {
  final String address;
  final Position position;
  LocationLoaded(this.address, this.position);
}

class LocationError extends LocationState {
  final String message;
  LocationError(this.message);
}

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial()) {
    on<GetLocation>((event, emit) async {
      emit(LocationLoading());
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        List<Placemark> placemarks = await placemarkFromCoordinates(
          position.latitude,
          position.longitude,
        );
        if (placemarks.isNotEmpty) {
          Placemark place = placemarks[0];
          String address =
              "${place.street}, ${place.locality}, ${place.postalCode}, ${place.country}";
          emit(LocationLoaded(address, position));
        } else {
          emit(LocationError("Address not found"));
        }
      } catch (e) {
        emit(LocationError("Failed to get location"));
      }
    });
  }
}
