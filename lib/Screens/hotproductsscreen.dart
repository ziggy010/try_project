import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/Components/HomeComponets/farm_category.dart';

import '../Components/HomeComponets/hot_products.dart';
import '../constants.dart';

class HotScreen extends StatelessWidget {
  static const String id = 'HotScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kNavbarColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Hot Products',
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
            Container(
              height: 72.h,
              color: const Color(0xFF28A745),
              child: Padding(
                padding: EdgeInsets.only(left: 16.0.w, right: 12.0.w),
                child: SizedBox(
                  height: 47.h,
                  width: 440.w,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: Image.asset("lib/icons/Combined Shape.png"),
                        color: Colors.black,
                        onPressed: () {},
                      ),
                      hintText: 'Search products',
                      contentPadding:
                          EdgeInsets.fromLTRB(30.w, 10.h, 30.w, 10.h),
                      hintStyle: TextStyle(
                        fontFamily: "poppins",
                        color: const Color(0xFFB7BFCC),
                        fontSize: 14.sp,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(
                            12.r,
                          )),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PopupMenuButton(
                    offset: Offset(0, 20),
                    color: Colors.white,
                    elevation: 1,
                    splashRadius: 0,
                    position: PopupMenuPosition.under,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    constraints: BoxConstraints(
                      minHeight: 144.h,
                      maxWidth: 187.w,
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 16.h,
                            bottom: 16.h,
                          ),
                          child: Container(
                            height: 48.h,
                            width: 155.w,
                            decoration: BoxDecoration(
                              color: Color(0xFFE6F7EF),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Text(
                                'Alphabetic (A - Z)',
                                style: TextStyle(
                                  color: kNavbarColor,
                                  fontFamily: 'poppins',
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16.h),
                          child: Container(
                            height: 48.h,
                            width: 155.w,
                            decoration: BoxDecoration(
                              color: Color(0xFFE6F7EF),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Text(
                                'Recently Added',
                                style: TextStyle(
                                  color: kNavbarColor,
                                  fontFamily: 'poppins',
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16.h),
                          child: Container(
                            height: 48.h,
                            width: 155.w,
                            decoration: BoxDecoration(
                              color: Color(0xFFE6F7EF),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Text(
                                'Ratings',
                                style: TextStyle(
                                  color: kNavbarColor,
                                  fontFamily: 'poppins',
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                    child: Container(
                      height: 45.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                        color: Color(0xFFE6F7EF),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.w),
                        child: Row(
                          children: [
                            Text(
                              'Sort by',
                              style: TextStyle(
                                fontFamily: 'poppin',
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF2DAF6C),
                                fontSize: 15.sp,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Center(
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xFF2DAF6C),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                HotProducts(
                  buttonColor: const Color(0xFFFFFFFF),
                  price: 'Rs 2000',
                  image: 'wheat',
                  heading: 'Organic Compost',
                  buttonText: '9845578662',
                ),
                HotProducts(
                  buttonColor: const Color(0xFFFFFFFF),
                  price: 'Rs 2000',
                  image: 'wheat',
                  heading: 'Organic Compost',
                  buttonText: '9845578662',
                ),
              ],
            ),
            Row(
              children: [
                HotProducts(
                  buttonColor: const Color(0xFFFFFFFF),
                  price: 'Rs 2000',
                  image: 'wheat',
                  heading: 'Organic Compost',
                  buttonText: '9845578662',
                ),
                HotProducts(
                  buttonColor: const Color(0xFFFFFFFF),
                  price: 'Rs 2000',
                  image: 'wheat',
                  heading: 'Organic Compost',
                  buttonText: '9845578662',
                ),
              ],
            ),
            Row(
              children: [
                HotProducts(
                  buttonColor: const Color(0xFFFFFFFF),
                  price: 'Rs 2000',
                  image: 'wheat',
                  heading: 'Organic Compost',
                  buttonText: '9845578662',
                ),
                HotProducts(
                  buttonColor: const Color(0xFFFFFFFF),
                  price: 'Rs 2000',
                  image: 'wheat',
                  heading: 'Organic Compost',
                  buttonText: '9845578662',
                ),
              ],
            ),
            Row(
              children: [
                HotProducts(
                  buttonColor: const Color(0xFFFFFFFF),
                  price: 'Rs 2000',
                  image: 'wheat',
                  heading: 'Organic Compost',
                  buttonText: '9845578662',
                ),
                HotProducts(
                  buttonColor: const Color(0xFFFFFFFF),
                  price: 'Rs 2000',
                  image: 'wheat',
                  heading: 'Organic Compost',
                  buttonText: '9845578662',
                ),
              ],
            ),
            Row(
              children: [
                HotProducts(
                  buttonColor: const Color(0xFFFFFFFF),
                  price: 'Rs 2000',
                  image: 'wheat',
                  heading: 'Organic Compost',
                  buttonText: '9845578662',
                ),
                HotProducts(
                  buttonColor: const Color(0xFFFFFFFF),
                  price: 'Rs 2000',
                  image: 'wheat',
                  heading: 'Organic Compost',
                  buttonText: '9845578662',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
