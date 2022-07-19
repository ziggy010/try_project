import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableButtons extends StatelessWidget {
  final Widget buttonText;
  final int buttonHeight;
  final int buttonWidth;
  final Color buttonColor;
  final Color buttonBorderColor;

  ReusableButtons({
    required this.buttonText,
    required this.buttonHeight,
    required this.buttonWidth,
    this.buttonColor = Colors.transparent,
    this.buttonBorderColor = Colors.transparent,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: buttonHeight.h,
        width: buttonWidth.h,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(
            10.r,
          ),
          border: Border.all(color: buttonBorderColor),
        ),
        child: Center(
          child: buttonText,
        ),
      ),
    );
  }
}
