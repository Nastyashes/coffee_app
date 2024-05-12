import 'package:flutter/material.dart';

class Few extends StatelessWidget {
  const Few({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Like Coffee'),
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('Coffee Card')],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/order');
            },
            child: const Text('Order'),
          ),
        ],
      ),
    );
  }
}
