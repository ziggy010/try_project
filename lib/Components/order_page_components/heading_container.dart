import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadingContainer extends StatelessWidget {
  final String farmName;
  final double rating;
  final Color containerColor;
  final String containerText;
  final Color textColor;

  HeadingContainer({
    required this.farmName,
    required this.rating,
    required this.containerColor,
    required this.containerText,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              farmName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            RatingBar.builder(
              itemSize: 15.h,
              initialRating: rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
        Container(
          height: 34.h,
          width: 125.w,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              containerText,
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: textColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
