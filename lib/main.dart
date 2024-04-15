import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/coffee1.png'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            const Text(
              'Coffee so good, your taste buds will love it.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const Text(
              'The best grain,  the finest roast, the  powerful flavor.',
              style: TextStyle(
                  color: Color.fromRGBO(169, 169, 169, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(198, 124, 78, 1),
                  fixedSize: const Size(315, 62),
                  textStyle: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sora',
                  )),
              child: const Text(
                'Get Started',
              ),
            )
          ]),
        ),
        //  висота екрану
      ]),
    );
  }
}
