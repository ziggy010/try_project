import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThreeTextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 265.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        border: Border.all(
          color: Color(0xFFD5F1E2),
        ),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              TextfieldContainer(
                hintText: 'Any',
                keyboardType: TextInputType.number,
              ),
              TextfieldDivider(),
              TextfieldContainer(
                hintText: 'Amount',
                leftBottomBorder: 0,
                leftTopBorder: 0,
                keyboardType: TextInputType.number,
              ),
              TextfieldDivider(),
              TextfieldContainer(
                hintText: 'KG',
                rightBottomBorder: 12,
                rightTopBorder: 12,
                leftBottomBorder: 0,
                leftTopBorder: 0,
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextfieldDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          width: 1,
          height: 6.h,
        ),
        Container(
          color: Color(0xFFB7BFCC),
          width: 1,
          height: 30.h,
        ),
        Container(
          color: Colors.white,
          width: 1,
          height: 6.h,
        ),
      ],
    );
  }
}

class TextfieldContainer extends StatelessWidget {
  final String hintText;
  final int leftTopBorder;
  final int leftBottomBorder;
  final int rightTopBorder;
  final int rightBottomBorder;
  final TextInputType keyboardType;

  TextfieldContainer({
    required this.hintText,
    this.leftTopBorder = 12,
    this.leftBottomBorder = 12,
    this.rightTopBorder = 0,
    this.rightBottomBorder = 0,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: 87.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: TextField(
          keyboardType: keyboardType,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'poppins',
            fontSize: 13.sp,
          ),
          cursorColor: Colors.black,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 12.sp,
              fontFamily: 'poppins',
              color: Color(0xFFB7BFCC),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(leftTopBorder.r),
          bottomLeft: Radius.circular(leftBottomBorder.r),
          topRight: Radius.circular(rightTopBorder.r),
          bottomRight: Radius.circular(rightBottomBorder.r),
        ),
      ),
    );
  }
}
