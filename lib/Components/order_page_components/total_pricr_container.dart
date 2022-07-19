import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalPriceContainer extends StatelessWidget {
  final String totalFinalPrice;

  TotalPriceContainer({required this.totalFinalPrice});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total',
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            totalFinalPrice,
            style: TextStyle(
              color: Color(0xFF28A745),
              fontFamily: 'poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
