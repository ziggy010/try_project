import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:try_project/Components/product_ratescreen.dart';
import 'package:try_project/Components/productdet.dart';

import '../constants.dart';

class MyProduct extends StatelessWidget {
  static const String id = 'MyProduct';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kNavbarColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'My Products',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 16.sp,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFBFFFD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductDet(
              detail: 'Rs 50 per Kg',
              image: 'image 8',
              heading: 'Spinich',
            ),
            ProductDet(
              detail: 'Rs 60 per Kg',
              image: 'image 10',
              heading: 'Tomato',
            ),
            ProductDet(
              detail: 'Rs 70 per Kg',
              image: 'image 11',
              heading: 'Potato',
            ),
            ProductDet(
              detail: 'Rs 50 per Kg',
              image: 'image 8',
              heading: 'Spinich',
            ),
            ProductDet(
              detail: 'Rs 120 per Kg',
              image: 'image 13',
              heading: 'Lemon',
            ),
            ProductDet(
              detail: 'Rs 50 per Kg',
              image: 'image 8',
              heading: 'Spinich',
            ),
          ],
        ),
      ),
    );
  }
}
