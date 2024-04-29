import 'package:coffee_app/home.dart';
import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
 const Delivery();


 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      actions: [ ],
      title: Text('Detail'), ),
    body: Column(children: [


     ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>  Home()));}, child: Text('Order')) 
    ],)
  );
    }
    
      @override
      State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
      }
    }
    
      