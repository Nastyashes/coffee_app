import 'package:coffee_app/src/presentation/bloc/coffees_bloc/coffee_bloc.dart';
import 'package:coffee_app/src/presentation/bloc/bloc_coffee_counter/bloc_coffee_counter.dart';
import 'package:coffee_app/src/presentation/bloc/location_bloc/location_bloc.dart';
import 'package:coffee_app/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CoffeeBloc>(
            create: (context) => CoffeeBloc(),
          ),
          BlocProvider<CoffeeCounterBloc>(
            create: (context) => CoffeeCounterBloc(),
          ),
          BlocProvider(
          create: (context) => LocationBloc(),
        ),
        ],
        child: MaterialApp(
          builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            minWidth: 500,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(375, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(500, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ],
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoute,
          initialRoute: '/start',
        ));
  }
}
