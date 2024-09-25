import 'package:coffee_app/src/presentation/themes/button_theme.dart';
import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';
import 'package:flutter/material.dart';

class CoffeeStartPage extends StatelessWidget {
  const CoffeeStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(fit: StackFit.expand, children: [
          const FractionallySizedBox(
              alignment: Alignment.topCenter,
              widthFactor: 1.25,
              heightFactor: 0.7,
              child: Image(
                alignment: Alignment.bottomCenter,
                image: AssetImage(
                  'assets/image/coffee_start.png',
                ),
                fit: BoxFit.cover,
              )),
          Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [
                        0.2,
                        0.6
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
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, bottom: 8, top: 8),
                          child: Text(
                            'Coffee so good, your taste buds will love it.',
                            style: AppFonts.header1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            'The best grain,  the finest roast, the powerful flavor.',
                            style: AppFonts.body2.lightGrey1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 24, bottom: 8),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
                              style: headButtonStyle,
                              child: const Text(
                                'Get Started',
                              ),
                            ))
                      ])))
        ]));
  }
}
