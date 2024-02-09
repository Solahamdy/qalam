import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:qalam/core/size_config.dart';
import 'package:qalam/utils/styles.dart';
class Rating extends StatefulWidget {

  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  late double ratingValue = 3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight!*0.02,
      width: SizeConfig.screenWidth,
      child: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('(${ratingValue.toString()})',style: Styles.style8,),
          SizedBox(width: SizeConfig.screenWidth!*0.02,),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 15,
            textDirection: TextDirection.rtl,
            itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              setState(() {
                ratingValue = rating;
                print(rating);
              });
            },
          ),
        ],
      ),
    );
  }
}
