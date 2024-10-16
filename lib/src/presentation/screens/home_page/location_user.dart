import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationUser extends StatefulWidget {
  const LocationUser({super.key});

  @override
  State<LocationUser> createState() => LocationUserState();
}

class LocationUserState extends State<LocationUser> {
  Position? _position;

  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,
  );
  void getCurrentLocation() async {
    Position position =
        await Geolocator.getCurrentPosition(locationSettings: locationSettings);
    setState(() {
      _position = position;
    });
  }

  Future<void> checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return;
    }
    getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 11),
              child: Text(
                'Location',
                style: AppFonts.body1.lightGrey1,
              ),
            ),
            TextButton(
                onPressed: checkLocationPermission,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: _position != null
                          ? Text(
                              _position.toString(),
                              style: AppFonts.body2.lightGrey1,
                              softWrap: true,
                            )
                          : Text(
                              'My Position???',
                              style: AppFonts.body2.lightGrey1,
                            ),
                    ),
                    const Icon(
                      Icons.expand_more,
                      color: AppColors.lightgray1,
                    ),
                  ],
                ))
          ],
        ));
  }
}
