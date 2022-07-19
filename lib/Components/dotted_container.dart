import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:try_project/Components/reusable_buttons.dart';
import 'package:try_project/constants.dart';

class DottedContainer extends StatelessWidget {
  const DottedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Color(0xFFD5F1E2),
      dashPattern: [6, 6, 6, 6],
      strokeWidth: 2,
      child: Container(
        height: 117.h,
        width: 264.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Text(
              'We prefer square shaped images',
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 12.sp,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            ReusableButtons(
              buttonText: Text(
                'Browse',
                style: kButtonText.copyWith(
                  color: Color(0xFF2DAF6C),
                ),
              ),
              buttonHeight: 34,
              buttonWidth: 122,
              buttonColor: Color(0xFFE7F8EF),
            ),
          ],
        ),
      ),
    );
  }
}
