import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/home.dart';
import 'package:try_project/bottom_nav_bar.dart';

import '../constants.dart';

class UserSignin extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  static const String id = 'UserSignin';

  Widget build(BuildContext context) {
    final emailField = TextFormField(
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        prefixIcon: const Icon(Icons.person),
        contentPadding: EdgeInsets.fromLTRB(25.w, 15.h, 20.w, 25.h),
        hintText: "Email or Phone",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 5.w),
          borderRadius: BorderRadius.circular(28.r),
        ),
      ),
    );

    final passwordField = TextFormField(
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: const Icon(Icons.remove_red_eye),
        contentPadding: EdgeInsets.fromLTRB(25.w, 15.h, 20.w, 25.h),
        hintText: "Password",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 5.w),
          borderRadius: BorderRadius.circular(28.r),
        ),
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Stack(children: [
            Positioned(
              child: Container(
                height: 265.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kPrimaryColorOne,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(250.r, 70.r),
                    bottomRight: Radius.elliptical(250.r, 70.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50.h),
                      child: Image.asset(
                        'lib/assets/image/logo.png',
                        width: 150.w,
                      ),
                    ),
                    const Text('Hamrakisan.com', style: kAccountHeading),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 190.h, left: 5.w),
              child: Positioned(
                child: Column(
                  children: [
                    Container(
                      height: 470.h,
                      width: 328.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 30.0.h, right: 10.w, left: 10.w),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0.r),
                              child: Form(
                                  key: _formkey,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      emailField,
                                      SizedBox(
                                        height: 30.h,
                                      ),
                                      passwordField,
                                    ],
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20.0.r),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 120.w,
                                            height: 180.h,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.grey.shade200,
                                                width: 1.5.w,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(14.r),
                                              ),
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.all(8.0.r),
                                                  child: Image.asset(
                                                    'lib/assets/image/nonfarmer.png',
                                                    height: 100.h,
                                                    width: 100.w,
                                                    // color: Colors.green,
                                                  ),
                                                ),
                                                Text(
                                                  'Non-Farmer',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade400,
                                                    fontSize: 18.sp,
                                                    fontFamily: 'RobotoThin',
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(
                                                  'Can only buy',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade400,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'RobotoThin',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 17.w,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 120.w,
                                        height: 180.h,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.grey.shade200,
                                            width: 1.5.w,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(14.r),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(8.r),
                                              child: Image.asset(
                                                'lib/assets/image/farmer.png',
                                                height: 100.h,
                                                width: 100.w,
                                                // color: Colors.green,
                                              ),
                                            ),
                                            Text(
                                              'Farmer',
                                              style: TextStyle(
                                                color: Colors.grey.shade400,
                                                fontSize: 18.sp,
                                                fontFamily: 'RobotoThin',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              'Has farm / buy',
                                              style: TextStyle(
                                                color: Colors.grey.shade400,
                                                fontSize: 14.sp,
                                                fontFamily: 'RobotoThin',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50.h,
                              width: 400.w,
                              child: ElevatedButton(
                                onPressed: () async {
                                  await Navigator.pushNamed(
                                      context, BottomNavbar.id);
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    textStyle: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold)),
                                child: Text(
                                  'Login',
                                  style: TextStyle(fontSize: 20.0.sp),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Or signin with',
                      style: TextStyle(
                          fontSize: 14.0.sp, color: Colors.green.shade600),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 18.0.w),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onSurface: Colors.white,
                                  shape: (RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0.r),
                                      side: const BorderSide(
                                          color: Colors.white))),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/assets/image/fb.jpg",
                                      height: 28.h,
                                      width: 40.w,
                                      // alignment: const Alignment(0.09, 0.5),
                                    ),
                                    Text('Facebook',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onSurface: Colors.white,
                                  shape: (RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0.r),
                                      side: const BorderSide(
                                          color: Colors.white))),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/assets/image/google.png",
                                      height: 28.h,
                                      width: 40.w,
                                      // alignment: const Alignment(0.09, 0.5),
                                    ),
                                    Text('Google',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 65.0.w, top: 15.h),
                          child: Row(children: [
                            Text(
                              'Dont have an account?',
                              style: TextStyle(
                                  fontSize: 16.0.sp, color: Colors.black),
                            ),
                            Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 15.0.sp, color: Colors.green),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
