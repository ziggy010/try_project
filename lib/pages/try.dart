import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/constants.dart';
import 'package:try_project/main.dart';

import '../Components/dotted_container.dart';
import '../Components/reusable_buttons.dart';
import '../Components/three_textfield.dart';

class Try extends StatefulWidget {
  static const String id = 'Try';

  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  bool isSwitchOn = false;

  List<String> productsImages = [
    'lib/assets/image/image 8.png',
    'lib/assets/image/image 10.png',
    'lib/assets/image/image 11.png',
    'lib/assets/image/image 12.png',
    'lib/assets/image/image 13.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 72.h,
        width: 72.w,
        child: FloatingActionButton(
          elevation: 2,
          backgroundColor: Color(0xFF28A745),
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 35.sm,
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'My Products',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontFamily: 'poppins',
          ),
        ),
        elevation: 0,
        backgroundColor: kNavbarColor,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductContainer(
                ellipseColor: Color(0xFFD5E7D5),
                image: 'image 8',
                title: 'Spinich',
                subTitle: 'Rs 50 per kG',
              ),
              ProductContainer(
                ellipseColor: Color(0xFFD5E7D5),
                image: 'image 10',
                title: 'Spinich',
                subTitle: 'Rs 50 per kG',
              ),
              ProductContainer(
                ellipseColor: Color(0xFFD5E7D5),
                image: 'image 11',
                title: 'Spinich',
                subTitle: 'Rs 50 per kG',
              ),
              ProductContainer(
                ellipseColor: Color(0xFFD5E7D5),
                image: 'image 12',
                title: 'Spinich',
                subTitle: 'Rs 50 per kG',
                bottom: 13,
              ),
              ProductContainer(
                ellipseColor: Color(0xFFD5E7D5),
                image: 'image 13',
                title: 'Spinich',
                subTitle: 'Rs 50 per kG',
                bottom: 13,
              ),
              ProductContainer(
                ellipseColor: Color(0xFFD5E7D5),
                image: 'image 12',
                title: 'Spinich',
                subTitle: 'Rs 50 per kG',
                bottom: 13,
              ),
              ProductContainer(
                ellipseColor: Color(0xFFD5E7D5),
                image: 'image 13',
                title: 'Spinich',
                subTitle: 'Rs 50 per kG',
                bottom: 13,
              ),
              // Container(
              //   height: 588.h,
              //   width: 312.w,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12.r),
              //     color: Colors.white,
              //   ),
              //   child: Padding(
              //     padding: EdgeInsets.all(24.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'Add a new product',
              //           style: TextStyle(
              //             fontSize: 16.sp,
              //             fontFamily: 'poppins',
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //         SizedBox(
              //           height: 16.h,
              //         ),
              //         Text(
              //           'Product name',
              //           style: TextStyle(
              //             color: Color(0xFFB7BFCC),
              //             fontFamily: 'poppins',
              //             fontSize: 12,
              //           ),
              //         ),
              //         SizedBox(
              //           height: 4.h,
              //         ),
              //         SizedBox(
              //           height: 50.h,
              //           child: TextField(
              //             cursorColor: Colors.black,
              //             decoration: InputDecoration(
              //               border: OutlineInputBorder(),
              //               enabledBorder: OutlineInputBorder(
              //                 borderSide: BorderSide(
              //                   color: Color(0xFFD5F1E2),
              //                 ),
              //                 borderRadius: BorderRadius.circular(
              //                   10.r,
              //                 ),
              //               ),
              //               hintText: 'Product name',
              //               hintStyle: TextStyle(
              //                 color: Color(0xFFB7BFCC),
              //               ),
              //               focusedBorder: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(10.r),
              //                 borderSide: BorderSide(
              //                   color: Color(0xFFD5F1E2),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 16.h,
              //         ),
              //         Text(
              //           'Update product image',
              //           style: TextStyle(
              //             color: Color(0xFFB7BFCC),
              //             fontFamily: 'poppins',
              //             fontSize: 12.sp,
              //           ),
              //         ),
              //         SizedBox(
              //           height: 5.h,
              //         ),
              //         DottedContainer(),
              //         SizedBox(
              //           height: 16.h,
              //         ),
              //         Text(
              //           'Sales unit',
              //           style: TextStyle(
              //             color: Color(0xFFB7BFCC),
              //             fontSize: 12.sp,
              //             fontFamily: 'poppins',
              //             fontWeight: FontWeight.w500,
              //           ),
              //         ),
              //         SizedBox(
              //           height: 5.h,
              //         ),
              //         ThreeTextfield(),
              //         SizedBox(
              //           height: 16.h,
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text(
              //               'In stock',
              //               style: TextStyle(
              //                 fontSize: 13.sp,
              //                 fontFamily: 'poppins',
              //                 fontWeight: FontWeight.w400,
              //               ),
              //             ),
              //             Switch.adaptive(
              //               value: isSwitchOn,
              //               onChanged: (value) {
              //                 setState(() {
              //                   isSwitchOn = value;
              //                 });
              //               },
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 16.h,
              //         ),
              //         Row(
              //           children: [
              //             ReusableButtons(
              //               buttonText: Text(
              //                 'Delete',
              //                 style: TextStyle(
              //                   color: Color(0xFFFF6D6D),
              //                   fontFamily: 'poppins',
              //                   fontSize: 14.sp,
              //                 ),
              //               ),
              //               buttonHeight: 42,
              //               buttonWidth: 98,
              //               buttonBorderColor: Color(0xFFFFDDDD),
              //             ),
              //             SizedBox(
              //               width: 10.w,
              //             ),
              //             ReusableButtons(
              //               buttonText: Text(
              //                 'Save',
              //                 style: TextStyle(
              //                   color: Colors.white,
              //                   fontFamily: 'poppins',
              //                   fontSize: 14.sp,
              //                 ),
              //               ),
              //               buttonHeight: 42,
              //               buttonWidth: 156,
              //               buttonColor: Color(0xFF28A745),
              //             )
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20.h,
              //         ),
              //         ReusableButtons(
              //           buttonText: Text(
              //             'Discard',
              //             style: TextStyle(
              //               color: Color(0xFF28A745),
              //               fontFamily: 'poppins',
              //               fontSize: 14.sp,
              //             ),
              //           ),
              //           buttonHeight: 42,
              //           buttonWidth: 264,
              //           buttonColor: Color(0xFFE7F8EF),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductContainer extends StatelessWidget {
  final Color ellipseColor;
  final String image;
  final String title;
  final String subTitle;
  final double? left;
  final double? bottom;

  ProductContainer({
    required this.ellipseColor,
    required this.image,
    required this.title,
    required this.subTitle,
    this.left = 0,
    this.bottom = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Container(
        height: 100.h,
        width: 320.w,
        decoration: BoxDecoration(
          color: Color(0xFFF1F7F6),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(right: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 117.h,
                    // color: Colors.purple,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 55.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                color: ellipseColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.elliptical(450, 450),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          left: left,
                          bottom: bottom,
                          child: Image.asset('lib/assets/image/$image.png'),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(
                          color: Color(0x80011928),
                          fontSize: 13.sp,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset('lib/icons/Group.png'),
            ],
          ),
        ),
      ),
    );
  }
}
