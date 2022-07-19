import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiddleContainers extends StatelessWidget {
  final String vegetables;
  final String pricePerKg;
  final String totalPrice;

  MiddleContainers({
    required this.vegetables,
    required this.pricePerKg,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                vegetables,
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                pricePerKg,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: 'poppins',
                ),
              ),
            ],
          ),
          Text(
            totalPrice,
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'poppins',
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
