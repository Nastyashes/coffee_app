import 'package:coffee_app/coffees/coffee_parameters.dart';
import 'package:coffee_app/themes/fonts.dart';
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
            image: DecorationImage(
                image: AssetImage(coffee.imageAsset), fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffee.name,
                  style: AppFonts.title3.darkGrey,
                ),
                Text('with ${coffee.additive}',
                    style: AppFonts.body1.lightGrey2)
              ]),
        ),
      ],
    );
  }
}
