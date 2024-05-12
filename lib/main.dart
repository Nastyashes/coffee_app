import 'package:flutter/material.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( routes: routes,
      title: 'CoffeeShop',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        primaryColor: const Color.fromRGBO(198, 124, 78, 1),
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.w600)),
        fontFamily: 'Sora',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
                  'assets/image/CoffeeStart.png',
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
                        Color.fromRGBO(0, 0, 0, 1),
                        Color.fromRGBO(0, 0, 0, 0)
                      ])),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 16),
                          child: Text(
                            'Coffee so good, your taste buds will love it.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 34,
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            'The best grain,  the finest roast, the \n powerful flavor.',
                            style: TextStyle(
                                color: Color.fromRGBO(169, 169, 169, 1),
                                fontSize: 14,
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 34),
                            child: ElevatedButton(
                                onPressed: () {Navigator.pushNamed(context, '/home');},
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(255, 255, 255, 1)),
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color.fromRGBO(198, 124, 78, 1),
                                  ),
                                  minimumSize: const MaterialStatePropertyAll(
                                      Size(double.infinity, 62)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Get Started',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Sora',
                                  ),
                                )))
                      ])))
        ]));
  }
}
