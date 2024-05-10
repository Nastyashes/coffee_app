import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Delivery extends StatefulWidget {
  const Delivery();

  @override
  State<Delivery> createState() => DeliveryState();
}

class DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/maps.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter)),
          ),
          Align( 
            alignment: Alignment.bottomCenter, 
              child: Container(  height: MediaQuery.of(context).size.height / 2.5,
             width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Color.fromRGBO(255, 255, 255, 1) ),
            child: Column(
              children: [
             Padding(padding: EdgeInsets.only(), child:   Text('10 minutes left',style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(48, 51, 54, 1)))),

              ],
            ),
          ))
        ],
      ),
    );
  }
}
