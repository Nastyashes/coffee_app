
import 'package:flutter/material.dart';

import 'package:coffee_app/order_page/order_page.dart';




class Few extends StatelessWidget {
  const Few({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: const Text('Like Coffee'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Coffee Card')
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => OrderPage()),
              );
            },
            child: const Text('Order'),
          ),
          
        ],
      ),
    );
  }
}
