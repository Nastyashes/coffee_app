import 'package:coffee_app/detail_page/coffee_class.dart';
import 'package:flutter/material.dart';

class CappuccinoCard extends StatelessWidget {
  final Coffee coffee;
  const CappuccinoCard({super.key, required this.coffee});
  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
    Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image:  DecorationImage(
            image: AssetImage(coffee.imageAsset),
            fit: BoxFit.cover),
      ),
    ),
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child:
           Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          coffee.name,
          style: const TextStyle(
              fontFamily: 'Sora',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(47, 45, 44, 1)),
        ),
        Text('with ${coffee.additive}',
        style: const TextStyle(
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
