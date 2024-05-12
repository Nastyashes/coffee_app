import 'package:flutter/material.dart';


class CoffeeCount extends StatefulWidget {
  const CoffeeCount({super.key});

  @override
  CoffeeCountState createState() => CoffeeCountState();
}

class CoffeeCountState extends State<CoffeeCount> {
  int counter = 1;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      if (counter > 1) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
            OutlinedButton(
                onPressed: decrement,
                style: OutlinedButton.styleFrom(
                  
                  padding: const EdgeInsets.all(0),
                  fixedSize: const Size.fromRadius(16),
                  shape: const CircleBorder(),
                  side: const BorderSide(
                    color: Color.fromRGBO(234, 234, 234, 1),
                    width: 1,
                  ),
                ),
                child: const Icon(
                  Icons.remove,
                  color: Color.fromRGBO(47, 45, 44, 1),
                  size: 16,
                )),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 20),
            ),
            OutlinedButton(
                onPressed: increment,
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                  fixedSize: const Size.fromRadius(16),
                  shape: const CircleBorder(),
                  side: const BorderSide(
                    color: Color.fromRGBO(234, 234, 234, 1),
                    width: 1,
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Color.fromRGBO(47, 45, 44, 1),
                  size: 16,
                ))
          ]);
  }
}
