
import 'package:coffee_app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

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
      body: Stack(
        fit: StackFit.expand,
        children: [
        const FractionallySizedBox(
          alignment: Alignment.topCenter,
          widthFactor: 1.1, 
          heightFactor: 2/3,
          child: Image(
                image: AssetImage('assets/image/coffee1.png',),
                fit: BoxFit.fitWidth,
              ) 
        ),
        

        Align(alignment: AlignmentDirectional.bottomCenter,
          child: 

          Container( decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [
                0.35, 0.4
              ],
              colors: [
                Color.fromRGBO(0, 0, 0, 1),
                Color.fromRGBO(0, 0, 0, 0)])),
                child: 

        Column(
          

                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16), child: Text(
                        'Coffee so good, your taste buds will love it.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 30), child: Text(
                        'The best grain,  the finest roast, the \n powerful flavor.',
                        style: TextStyle(
                            color: Color.fromRGBO(169, 169, 169, 1),
                            fontSize: 14,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 34), child: 
                       ElevatedButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));},
                        child: const Text(
                          'Get Started', style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Sora',),),
                          style: ButtonStyle( 
                            foregroundColor: MaterialStateProperty.all(Color(0xFFFFFFFFF)),
                            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(198, 124, 78, 1), ),
                            minimumSize: MaterialStatePropertyAll(Size(double.infinity,62)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),),
                            ),
                      ))
      )])))]));
          
      
  
  }
}
