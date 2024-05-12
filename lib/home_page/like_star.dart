
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
  double _rating = 0.0;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton.icon(
          style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.zero),
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromRGBO(0, 0, 0, 0.16)),
              textStyle: MaterialStatePropertyAll(TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 10,
                  fontWeight: FontWeight.w600)),
              iconColor:
                  MaterialStatePropertyAll(Color.fromRGBO(251, 190, 33, 1)),
              iconSize: MaterialStatePropertyAll(10)),
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          icon: const Icon(Icons.star),
          label: Text(
            _rating > 0 ? _rating.toString() : '4.8', 
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
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
                    color: Color.fromRGBO(251, 190, 33, 1),
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
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
