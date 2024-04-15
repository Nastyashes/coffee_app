
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
       textTheme: const TextTheme(bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 34, 
        fontWeight: FontWeight.w600)),
       fontFamily: 'Sora',),
      
     
      home: const MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({super.key});

  @override
  Widget build (BuildContext context)
 {return  Scaffold( backgroundColor: Colors.black,

  body: 
  Stack(
    children: [ 
 
FractionallySizedBox(
    alignment: Alignment.bottomCenter,
    widthFactor: 1, // ширини екрану
    heightFactor: 2/3,
     child:  Container(
    decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/image/coffee1.png'),
       alignment: Alignment(1.0, 2.0),
       fit: BoxFit.cover,
      ),
      ),
    ),
    ), //  висота екрану
 
Positioned ( 
  top: 502,
  
  child:  Center( child: 
 ConstrainedBox(constraints: BoxConstraints(maxWidth: 400, minWidth: 375, maxHeight: 362),
child: 
  Column(  
    mainAxisAlignment: MainAxisAlignment.center,
         children: [
          
           Text('Coffee so good, your taste buds will love it.', 
            style: TextStyle( 
            color: Colors.white,
            fontSize: 34, 
            fontWeight: FontWeight.w600 ),textAlign: TextAlign.center,),
       
           Text ('The best grain,  the finest roast, the  powerful flavor.',
            style: TextStyle( color: Color.fromRGBO(169, 169, 169, 1),
            fontSize: 14, 
            fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,),

          ElevatedButton( onPressed: () {  }, child: const Text('Get Started',),
           style: ElevatedButton.styleFrom(
           backgroundColor: Color.fromRGBO(198, 124, 78, 1),
           fixedSize: Size(315, 62),
           textStyle: TextStyle(color: const Color.fromRGBO(255, 255, 255, 1), fontWeight: FontWeight.w600, fontFamily: 'Sora',)

         ),)
 ])
 ,),)
 )]),
      
       );
      
       
       
       
       
        
       
  

 }  
}

 /* @override
  Widget buil
        Container ( 
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/image/coffee1.png'),
      alignment: Alignment(0.0, -2.0),
      
       fit: BoxFit.cover, )
       ),

width: 375,
height: 450,),d(BuildContext context)
{
  SizedBox( width: 375,
      height: 362,
    
    return const Scaffold(
       
      backgroundColor: Colors.black,
      body: 
      Column (
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Icon(Icons.coffee, 
       color: Colors.white,
       size: 600.0),
      
        Expanded (
          child: Text ('Coffee so good, your taste buds will love it.',
         style: TextStyle( 
        color: Colors.white,
        fontSize: 34, 
        fontWeight: FontWeight.w600), ),),
        
        Expanded (
          child:
        Text('The best grain, the finest roast, the powerful flavor.',
        style: TextStyle( color: Color.fromRGBO(169, 169, 169, 1),
        fontSize: 14, 
        fontWeight: FontWeight.w400),),),
      //ElevatedButton(style: ), onPressed: null, child: Text('Get Started')
      ]) 
      
      
       )
       ;
  
          //Image(image:NetworkImage('https://s3-alpha-sig.figma.com/img/b312/299d/b7d25cf7008be3a0b1be7c883c7455df?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cXcLyTgVwdkXF75bZtmCZHi9J2pITnKV9Vx7gPgOOy1e2YfGyJDIU0x~-7u7xj~rucJ~VsOtr~jtiyHQldKsxftna7JdUdKP-dteic-XYuMpjfEbkU7F8FMw2Y-0OefA8y~bz9i3sq-w0-axW4N-td27Zi-6quRLm8TIRoM974jTRYyLqSc-vXvUwZIgAQ07DqTaANrlgVJIPBuXPF2OjLcM2nJHdBYLL~FSh6BnyQLPSY00RbwKByT5RCrA~jceGs4GE8URZimMFyfZMvPGzrBGIR5Y5XOXWat2r78vSXEEjaFszfm8chXcY3ZgSaum9-ckwfTrEMxIbe~07wMgEg__',


    
  }
  
 }*/
