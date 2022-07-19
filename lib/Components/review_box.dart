import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/components/outline_border_button.dart';
import 'package:try_project/components/reusable_icon_button.dart';
import 'package:try_project/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewBox extends StatelessWidget {
  final String fullname;
  final double initialRating;
  final String reviewPara;
  final String date;

  ReviewBox({
    required this.fullname,
    required this.initialRating,
    required this.reviewPara,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: Container(
        width: 340.w,
        decoration: BoxDecoration(
          color: Color(0xFFF1F7F6),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0.sm),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    fullname,
                    style: kReviewName,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Color(0xFF868F9C),
                      fontSize: 12.sp,
                      fontFamily: 'poppins',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              RatingBar.builder(
                itemSize: 15.h,
                initialRating: initialRating,
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
              SizedBox(
                height: 10.h,
              ),
              Text(
                reviewPara,
                style: kReviewPara,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
