import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPricee extends StatelessWidget {
  final String heading;
  final String content;
  final String price;

  ProductPricee({
    required this.heading,
    required this.content,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108.h,
      width: 390.w,
      color: const Color(0xFFEFF4F4),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // 'आलु रातो ',
                  heading,
                  style: TextStyle(
                      fontFamily: 'Martel',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Text(
                  // 'निउन्तम  ३४ अधिक्तम  ४०',
                  content,
                  style: TextStyle(
                      fontFamily: 'Martel',
                      color: const Color(0xFF011928),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 108.w, top: 15.h),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  price,
                  // 'रु. ३८',
                  style: TextStyle(
                      color: Color(0xFF2DAF6C),
                      fontFamily: 'Martel',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}
