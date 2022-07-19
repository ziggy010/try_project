import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/constants.dart';

class MyFarm extends StatelessWidget {
  static const String id = 'Myfarm';

  List<String> myFarmImage = [
    'lib/assets/image/farmHero.png',
    'lib/assets/image/farmHero2.png',
    'lib/assets/image/farmHero3.png',
    'lib/assets/image/farmHero2.png',
    'lib/assets/image/farmHero3.png',
    'lib/assets/image/farmHero.png',
    'lib/assets/image/farmHero3.png',
    'lib/assets/image/farmHero.png',
    'lib/assets/image/farmHero2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'My Farm',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontFamily: 'poppins',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 183.h,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 183.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/assets/image/farmHero.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 183.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x000013118),
                          Color(0xFF06552C),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 48,
                    child: Text(
                      'Shiwani Agro Farm',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'poppins'),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 24,
                    child: Text(
                      'Butwal, Rupandehi 5',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 42.h,
                        width: 167.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xFFE7F8EF),
                        ),
                        child: Center(
                          child: Text(
                            'Edit Informations',
                            style: TextStyle(
                              color: Color(0xFF28A745),
                              fontFamily: 'poppins',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    width: 320.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: Color(0xFFF2F7F6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About Farm',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'We help startups to build their dream as design partners. So far we helped 8 companies to build their dream. We help startups to build their dream as design partners. So far we helped 8 companies to build their dream. ',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    height: 356.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: Color(0xFFF2F7F6),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Image',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Flexible(
                            child: GridView.builder(
                              itemCount: myFarmImage.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: 90.h,
                                    width: 90.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          myFarmImage[index],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
