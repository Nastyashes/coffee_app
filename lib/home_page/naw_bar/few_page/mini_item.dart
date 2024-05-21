import 'package:flutter/material.dart';
import 'package:coffee_app/coffees/coffee_parameters.dart';
import 'package:coffee_app/detail_page/detail.dart';
import 'package:coffee_app/themes/colors.dart';
import 'package:coffee_app/themes/fonts.dart';

class MiniItemCoffee extends StatelessWidget {
  final Coffee item;

  const MiniItemCoffee(f, {super.key, required this.item, required Coffee coffee});

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
              image: AssetImage(item.imageAsset),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: AppFonts.title3.darkGrey,
              ),
              Text(
                'with ${item.additive}',
                style: AppFonts.body1.lightGrey2,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detail(coffee: item, onLiked: () {  },),
              ),
            );
          },
          child:  Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          color: AppColors.peru,
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                        iconSize: 16,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Detail(coffee: item, onLiked: () {  },),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.add,
                          color: AppColors.white,
                        ),
                      ),
                    ),
            ),
       ]);
  }
}