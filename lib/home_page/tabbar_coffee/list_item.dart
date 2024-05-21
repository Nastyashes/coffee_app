import 'package:coffee_app/coffees/coffee_parameters.dart';
import 'package:coffee_app/detail_page/detail.dart';
import 'package:coffee_app/home_page/tabbar_coffee/like_star.dart';
import 'package:coffee_app/themes/colors.dart';
import 'package:coffee_app/themes/fonts.dart';
import 'package:flutter/material.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem({super.key, required this.item});
  final Coffee item;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:AppColors.white),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(item.imageAsset),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                  child: const LikeStarButton())),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              item.name,
              style: AppFonts.title3.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'with ${item.additive}',
              style: AppFonts.body1.lightGrey2,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${item.priseM}',
                      style:AppFonts.title2.darkSalateGray,
                    ),
                    Container(
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
                    )
                  ]))
        ]));
  }
}
