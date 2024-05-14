import 'package:coffee_app/themes/button_theme.dart';
import 'package:coffee_app/themes/colors.dart';
import 'package:coffee_app/themes/fonts.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
       routes: routes,
      title: 'CoffeeShop',
      home: const CoffeeHomePage(),
    );
  }
}

class CoffeeHomePage extends StatelessWidget {
  const CoffeeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(fit: StackFit.expand, children: [
          const FractionallySizedBox(
              alignment: Alignment.topCenter,
              widthFactor: 1.1,
              heightFactor: 2 / 3,
              child: Image(
                image: AssetImage(
                  'assets/image/coffee_start.png',
                ),
                fit: BoxFit.fitWidth,
              )),
          Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [
                        0.35,
                        0.4
                      ],
                          colors: [
                        AppColors.darkgrad11,
                        AppColors.darkgrad22
                      ])),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 16),
                          child: Text(
                            'Coffee so good, your taste buds will love it.',
                            style: AppFonts.header1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            'The best grain,  the finest roast, the \n powerful flavor.',
                            style:  AppFonts.body2.lightGrey1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 34),
                            child: ElevatedButton(
                                onPressed: () {Navigator.pushNamed(context, '/home');},
                                style: headButtonStyle,
                                child:  const Text(
                                  'Get Started',
                                  ),
                                ))
                      ])))
        ]));
  }
}
