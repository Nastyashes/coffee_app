import 'package:coffee_app/themes/colors.dart';
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
    return Row( mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
            OutlinedButton(
                onPressed: decrement,
                style: OutlinedButton.styleFrom(
                  
                  padding: const EdgeInsets.all(0),
                  fixedSize: const Size.fromRadius(16),
                  shape: const CircleBorder(),
                  side: const BorderSide(
                    color: AppColors.borderlight,
                    width: 1,
                  ),
                ),
                child: const Icon(
                  Icons.remove,
                  color: AppColors.darkGray,
                  size: 14,
                )),
           Container(padding: EdgeInsets.zero, child: Text(
              '$counter', 
              style: const TextStyle(fontSize: 18),
            ),) ,
            OutlinedButton(
                onPressed: increment,
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                  fixedSize: const Size.fromRadius(16),
                  shape: const CircleBorder(),
                  side: const BorderSide(
                    color: AppColors.borderlight,
                    width: 1,
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: AppColors.darkGray,
                  size: 14,
                ))
          ]);
  }
}
