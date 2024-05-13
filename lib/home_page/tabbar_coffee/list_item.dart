import 'package:coffee_app/detail_page/coffee_class.dart';
import 'package:coffee_app/home_page/like_star.dart';
import 'package:flutter/material.dart';

class CoffeeItem extends StatelessWidget{
  const CoffeeItem({super.key, required this.item});
  final Coffee item;
  @override
  Widget build(BuildContext context) {
   return Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromRGBO(255, 255, 255, 1)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                            alignment: Alignment.topLeft,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        item.imageAsset),
                                    fit: BoxFit.fitHeight),
                                borderRadius: BorderRadius.circular(10)),
                            child: const LikeStarButton())),
                    const SizedBox(
                      height: 10,
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        item.name,
                        style: const TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'with ${item.additive}',
                        style: const TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(155, 155, 155, 1)),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text(
                                '\$ ${item.priseM}',
                                style: const TextStyle(
                                    fontFamily: 'Sora',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(47, 75, 78, 1)),
                              ),
                              Container(
                                width: 32,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(198, 124, 78, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: IconButton(
                                    visualDensity:
                                        VisualDensity.adaptivePlatformDensity,
                                    style: const ButtonStyle(
                                        iconColor: MaterialStatePropertyAll(
                                            Colors.white)),
                                    iconSize: 16,
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/detail',
                                          );
                                    },
                                    icon: const Icon(Icons.add)),
                              )
                            ]))
                  ]));
  }
}