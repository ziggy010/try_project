import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FarmCategory extends StatelessWidget {
  final String heading;
  final String address;
  final double rating;
  final String image;
  FarmCategory({
    required this.heading,
    required this.address,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.w, top: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 125.h,
                width: 153.w,
                decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   begin: Alignment.topRight,
                  //   end: Alignment.bottomLeft,
                  //   colors: [
                  //     Colors.green,
                  //     Colors.greenAccent,
                  //   ],
                  // ),
                  image: DecorationImage(
                      image: AssetImage(
                        'lib/assets/image/$image.jpeg',
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style: TextStyle(
                        color: const Color(0xFF28A745),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'poppins',
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      address,
                      style: TextStyle(
                        color: const Color(0xFF859588),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'poppins',
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    RatingBar.builder(
                      itemSize: 15.h,
                      initialRating: rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Color(0xFFF9D462),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 11.w,
        ),
      ],
    );
  }
}
