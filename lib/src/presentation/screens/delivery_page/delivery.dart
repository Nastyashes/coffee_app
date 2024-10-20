import 'package:coffee_app/src/presentation/bloc/location_bloc/location_bloc.dart';
import 'package:coffee_app/src/presentation/screens/delivery_page/courier.dart';
import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => DeliveryState();
}

class DeliveryState extends State<Delivery> {
  bool _isVisible = true;
  
  final LatLng defaultLocation = const LatLng(50.4546600, 30.5238000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Center(
              child: Text('Delivery', style: AppFonts.title2.darkGrey),
            )),
      ),
      body: Stack(
        children: [
          BlocBuilder<LocationBloc, LocationState>(
            builder: (context, state) {
              LatLng mapCenter;

              if (state is LocationLoaded) {
                // Використання координат з Bloc
                mapCenter = LatLng(state.position.latitude, state.position.longitude);
              } else {
                // Використання координат за замовчуванням
                mapCenter = defaultLocation;
              }

              return
          FlutterMap(
            options:  MapOptions(
              initialCenter: mapCenter,
              initialZoom: 9.2,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              RichAttributionWidget(
                attributions: [
                  TextSourceAttribution(
                    'OpenStreetMap contributors',
                    onTap: () =>
                        (Uri.parse('https://openstreetmap.org/copyright')),
                  ),
                    ],
                  ),
                ],
              );
            },
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: AppColors.white),
                      child: Column(
                        children: [
                          IconButton(
                            icon: const ImageIcon(
                              AssetImage('assets/icons/indicator.png'),
                              color: AppColors.borderlight,
                              size: 44,
                            ),
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                          ),
                          Visibility(
                              visible: _isVisible,
                              child: Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Text('10 minutes left',
                                          style: AppFonts.title3.editbutton)),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Delivery to ',
                                            style: AppFonts.body1.grey1),
                                        Text('Jl. Kpg Sutoyo',
                                            style: AppFonts.body1medium.grey1),
                                      ]),
                                  const Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 10, top: 10),
                                      child: Divider(
                                        color: AppColors.dividerlight,
                                        thickness: 4,
                                        indent: 30,
                                        endIndent: 30,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30),
                                      child: Container(
                                        padding: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            border: Border.all(
                                                color: AppColors.dividerlight)),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  border: Border.all(
                                                      color: AppColors
                                                          .bordergray)),
                                              child: const ImageIcon(
                                                  AssetImage(
                                                      'assets/icons/bike.png'),
                                                  color: AppColors.peru,
                                                  size: 32),
                                            ),
                                            const SizedBox(width: 12),
                                            Expanded(
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                  Text('Delivered your order',
                                                      softWrap: true,
                                                      style: AppFonts
                                                          .title4.editbutton),
                                                  const SizedBox(height: 6),
                                                  Text(
                                                    'We deliver your goods to you in the shortes possible time.',
                                                    style: AppFonts.body1.grey1,
                                                    softWrap: true,
                                                  )
                                                ])),
                                          ],
                                        ),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 54,
                                            width: 54,
                                            decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        'assets/image/driver.png'),
                                                    fit: BoxFit.contain),
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Johan Hawn',
                                                      style: AppFonts
                                                          .title4.editbutton),
                                                  Text('Personal Courier',
                                                      style:
                                                          AppFonts.body2.grey1)
                                                ],
                                              )),
                                          const Expanded(
                                              child: SizedBox(
                                            width: double.minPositive,
                                          )),
                                          const CourierPhoneIcon()
                                        ],
                                      ))
                                ],
                              ))
                        ],
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
