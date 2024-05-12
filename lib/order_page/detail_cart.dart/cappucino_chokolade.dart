import 'package:flutter/material.dart';

class CappuccinoChocolateCard extends StatelessWidget {
  const CappuccinoChocolateCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
    Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image: AssetImage('assets/image/Cappucino1.png'),
            fit: BoxFit.cover),
      ),
    ),
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Cappucino',
          style: TextStyle(
              fontFamily: 'Sora',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(47, 45, 44, 1)),
        ),
        Text('with Chocolate',
        style: TextStyle(
              fontFamily: 'Sora',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(155, 155, 155, 1)))
      ]),
    ),
          ],
        );
  }
}
