// ignore_for_file: avoid_print

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/Components/HomeComponets/farm_category.dart';
import 'package:try_project/Components/HomeComponets/hot_products.dart';
import 'package:try_project/Components/HomeComponets/slideshow.dart';
import 'package:try_project/Components/HomeComponets/training.dart';
import 'package:try_project/Screens/farmscreen.dart';
import 'package:try_project/Screens/hotproductsscreen.dart';

import 'package:try_project/constants.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const String id = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFBFFFD),
        // bottomNavigationBar: (BottomNavbar()),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 180.h,
                  color: const Color(0xFF28A745),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Row(children: [
                            const Text(
                              'Hamra Kisan',
                              style: heading,
                            ),
                            SizedBox(
                              width: 108.w,
                            ),
                            ImageIcon(
                              const AssetImage("lib/icons/Bell.png"),
                              size: 75.sm,
                              color: const Color(0xFFFBFFFD),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.w, right: 12.w),
                          child: SizedBox(
                            height: 47.h,
                            width: 440.w,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: IconButton(
                                  icon: Image.asset(
                                      "lib/icons/Combined Shape.png"),
                                  color: Colors.black,
                                  onPressed: () {},
                                ),
                                hintText: 'Search for Farms and Products',
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
                      ],
                    ),
                  )),
              SizedBox(
                height: 25.h,
              ),
              const SlideShow(),
              SizedBox(height: 25.h),
              Row(
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    'Farms',
                    style: TextStyle(
                      fontFamily: "poppins",
                      color: const Color(0xFF011928),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    width: 210.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, FarmScreen.id);
                    },
                    child: Text(
                      'View More',
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 13.sp,
                          color: const Color(0xFF28A745),
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  FarmCategory(
                    image: 'farming4',
                    heading: 'Singh Matsya Hatchery',
                    address: 'Naxal, Kathmandu',
                    rating: 2,
                  ),
                  FarmCategory(
                    image: 'farming3',
                    heading: 'Siwani Agro Farm',
                    address: 'Newroad, Kathmandu',
                    rating: 2,
                  ),
                ],
              ),
              Row(
                children: [
                  FarmCategory(
                    image: 'farming2',
                    heading: 'Singh Matsya Hatchery',
                    address: 'Naxal, Kathmandu',
                    rating: 2,
                  ),
                  FarmCategory(
                    image: 'farming1',
                    heading: 'Siwani Agro Farm',
                    address: 'Newroad, Kathmandu',
                    rating: 2,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                child: Container(
                  height: 40.h,
                  width: 122.w,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE7F8EF),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Center(
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontFamily: 'poppin',
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2DAF6C),
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  GestureDetector(
                    child: Text(
                      'Hot Products',
                      style: TextStyle(
                        fontFamily: "poppins",
                        color: const Color(0xFF011928),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HotScreen.id);
                    },
                    child: Text(
                      'View More',
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 13.sp,
                          color: const Color(0xFF28A745),
                          fontWeight: FontWeight.w500),
                    ),
                  )
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
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                child: Container(
                  height: 40.h,
                  width: 122.w,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE7F8EF),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  ),
                  child: Center(
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontFamily: 'poppin',
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2DAF6C),
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    'Trainings',
                    style: TextStyle(
                      fontFamily: "poppins",
                      color: const Color(0xFF011928),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    width: 180.w,
                  ),
                  Text(
                    'View More',
                    style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 13.sp,
                        color: const Color(0xFF28A745),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
              Training(),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                child: Container(
                  height: 40.h,
                  width: 122.w,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE7F8EF),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  ),
                  child: Center(
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontFamily: 'poppin',
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2DAF6C),
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        ));
  }
}
