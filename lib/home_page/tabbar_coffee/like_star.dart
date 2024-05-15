
import 'package:coffee_app/home_page/tabbar_coffee/bloc_home/bloc_home.dart';
import 'package:coffee_app/themes/colors.dart';
import 'package:coffee_app/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class LikeStarButton extends StatefulWidget {
  const LikeStarButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LikeStarButtonState createState() => _LikeStarButtonState();
}

class LikeStarButtonState {
}

class _LikeStarButtonState extends State<LikeStarButton> {
  final _homePageBloc = HomePageBloc();
  double _rating = 0.0;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton.icon(
          style:  const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.zero),
              backgroundColor:
                  MaterialStatePropertyAll(Colors.transparent),
              iconColor:
                  MaterialStatePropertyAll(AppColors.gold),
              iconSize: MaterialStatePropertyAll(10)),
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          icon: const Icon(Icons.star),
          label: Text(
            _rating > 0 ? _rating.toString() : '4.8', 
            style: AppFonts.star.white),
        ),
        if (_isExpanded)
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
                    color:AppColors.gold,
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                        _homePageBloc.add(ClickStar());
                      _rating = rating;
                      _isExpanded =
                          false; 
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
