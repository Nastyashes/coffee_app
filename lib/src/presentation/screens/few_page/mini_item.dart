import 'package:coffee_app/src/entities/coffee_items.dart';
import 'package:coffee_app/src/presentation/screens/detail_page/view/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';

class MiniItemCoffee extends StatelessWidget {
  const MiniItemCoffee({super.key, required this.item});
  final Coffee item;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.bordergray),
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
                    builder: (context) => Detail(
                      coffee: item,
                      onLiked: () {},
                    ),
                  ),
                );
              },
              child: Container(
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
                        builder: (context) => Detail(
                          coffee: item,
                          onLiked: () {},
                        ),
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
          ],
        ));
  }
}
