import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                  
                  padding: EdgeInsets.all(0),
                  fixedSize: Size.fromRadius(16),
                  shape: CircleBorder(),
                  side: BorderSide(
                    color: Color.fromRGBO(234, 234, 234, 1),
                    width: 1,
                  ),
                ),
                child: Icon(
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
                  padding: EdgeInsets.all(0),
                  fixedSize: Size.fromRadius(16),
                  shape: CircleBorder(),
                  side: BorderSide(
                    color: Color.fromRGBO(234, 234, 234, 1),
                    width: 1,
                  ),
                ),
                child: Icon(
                  Icons.add,
                  color: Color.fromRGBO(47, 45, 44, 1),
                  size: 16,
                ))
          ]);
  }
}
