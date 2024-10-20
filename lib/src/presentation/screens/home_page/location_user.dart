import 'package:coffee_app/src/presentation/bloc/location_bloc/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';

class LocationUser extends StatelessWidget {
  const LocationUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 11),
            child: Text(
              'Location',
              style: AppFonts.body1.lightGrey1,
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<LocationBloc>().add(GetLocation());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: BlocBuilder<LocationBloc, LocationState>(
                    builder: (context, state) {
                      if (state is LocationLoading) {
                        return CircularProgressIndicator();
                      } else if (state is LocationLoaded) {
                        return Text(
                          state.address,
                          style: AppFonts.body2.lightGrey1,
                          softWrap: true,
                        );
                      } else if (state is LocationError) {
                        return Text(
                          state.message,
                          style: AppFonts.body2.lightGrey1,
                        );
                      } else {
                        return Text(
                          'My Position???',
                          style: AppFonts.body2.lightGrey1,
                        );
                      }
                    },
                  ),
                ),
                const Icon(
                  Icons.expand_more,
                  color: AppColors.lightgray1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}