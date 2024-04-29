import 'package:coffee_app/order_page.dart';
import 'package:flutter/material.dart';

class Choice extends StatefulWidget {
 const Choice();


 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      actions: [ ],
      title: Text('Detail'), ),
    body: Column(children: [


     ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>  OrderPage()));}, child: Text('Order')) 
    ],)
  );
    }
    
      @override
      State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
      }
    }
    
      