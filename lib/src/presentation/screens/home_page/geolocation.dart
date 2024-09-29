import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

Future<String> getCurrentLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Перевірка наявності служби геолокації
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.',
    );
  }

  // Отримання позиції
  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

  // Перетворення координат на адресу
  List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
  Placemark place = placemarks[0];

  return '${place.locality}, ${place.country}'; // або використовувати інші поля, якщо потрібно
}
