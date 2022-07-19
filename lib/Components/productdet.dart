import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDet extends StatelessWidget {
  final String heading;
  final String detail;
  final String image;

  ProductDet({
    required this.heading,
    required this.detail,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 6.h),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Stack(children: [
            Container(
              height: 140.h,
              width: 320.w,
              color: const Color(0xFFF1F7F6),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Container(
                          height: 120.h,
                          width: 155.w,
                          decoration: const BoxDecoration(
                              color: Color(0xFFD5E7D5),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(75),
                                  topLeft: Radius.circular(75))),
                          child: Image.asset(
                            'lib/assets/image/$image.png',
                            height: 140.h,
                            width: 100.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            heading,
                            style: TextStyle(
                              color: const Color(0xFF011928),
                              fontFamily: 'poppins',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                          Text(
                            detail,
                            style: TextStyle(
                              color: const Color(0xFF011928),
                              fontFamily: 'poppins',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 58.0),
                        child: ImageIcon(
                          AssetImage("lib/icon/akar-icons_edit.png"),
                          color: Color(0xFF7F99A9),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
