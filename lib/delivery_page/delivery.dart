import 'package:flutter/material.dart';

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
          Positioned(
              child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Color.fromRGBO(255, 255, 255, 1) ),
            child: Column(
              children: [],
            ),
          ))
        ],
      ),
    );
  }
}
