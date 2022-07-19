import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotProducts extends StatelessWidget {
  final String image;
  final String heading;
  final String price;
  final String buttonText;
  final Color buttonColor;
  HotProducts({
    required this.image,
    required this.heading,
    required this.price,
    required this.buttonText,
    required this.buttonColor,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 20.w,
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(left: 8.w, top: 10.h),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFEFF4F4),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              width: 140.w,
              height: 267.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w, top: 10.h),
                    child: Container(
                      height: 140.h,
                      width: 127.w,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFF4F4),
                        image: DecorationImage(
                            image: AssetImage(
                              'lib/assets/image/$image.png',
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: const Color(0xFF28A745),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'poppins',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Text(
                      price,
                      style: TextStyle(
                        color: const Color(0xFF4B4B4B),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'poppins',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: GestureDetector(
                      child: Container(
                        height: 40.h,
                        width: 154.w,
                        decoration: BoxDecoration(
                          color: Color(0xFF28A745),
                          borderRadius: BorderRadius.all(Radius.circular(6.r)),
                        ),
                        child: Center(
                          child: Text(
                            buttonText,
                            style: TextStyle(
                              fontFamily: 'poppin',
                              fontWeight: FontWeight.w500,
                              color: buttonColor,
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
