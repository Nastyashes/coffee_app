import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class LikeStar extends StatelessWidget {
 const LikeStar({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rating Demo'),
      ),
      body: Center(
        child: RatingBar.builder(
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: false,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
            // Тут ви можете виконати будь-які дії з отриманою оцінкою
          },
        ),
      ),
    );
  }
}
