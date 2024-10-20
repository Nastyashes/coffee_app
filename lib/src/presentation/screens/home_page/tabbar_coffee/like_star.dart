import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class LikeStarButton extends StatefulWidget {
  const LikeStarButton({super.key});

  @override
  LikeStarButtonState createState() => LikeStarButtonState();
}

class LikeStarButtonState extends State<LikeStarButton> {
  double _rating = 0.0;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton.icon(
          style: const ButtonStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.zero),
              backgroundColor: WidgetStatePropertyAll(Colors.transparent),
              iconColor: WidgetStatePropertyAll(AppColors.gold),
              iconSize: WidgetStatePropertyAll(10)),
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          icon: const Icon(Icons.star),
          label: Text(_rating > 0 ? _rating.toString() : '4.8',
              style: AppFonts.star.white),
        ),
        if (isExpanded)
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 0.16),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: _rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 24.0,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: AppColors.gold,
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      _rating = rating;
                      isExpanded = false;
                    });
                  },
                ),
              ],
            ),
          ),
      ],
    );
  }
}
