import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/Screens/farm_review.dart';
import 'package:try_project/constants.dart';
import 'package:try_project/pages/my_farm_page.dart';
import 'package:try_project/pages/orders_page.dart';
import 'package:try_project/pages/try.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kNavbarColor,
        elevation: 0,
        title: Text(
          'Account',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 16.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 108.h,
                      width: 108.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        image: DecorationImage(
                          image: AssetImage('lib/assets/image/profile.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ram Prasad',
                          style: TextStyle(
                            color: Color(0xFF011928),
                            fontFamily: 'poppins',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Vegetable Farm',
                          style: TextStyle(
                            color: Color(0xFF011928),
                            fontFamily: 'poppins',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Butwal, Rupandehi 5',
                          style: TextStyle(
                            color: Color(0xFF011928),
                            fontFamily: 'poppins',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Text(
                'Dashboard',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  ProfileContainer(
                    mainContainerColor: Color(0xFFEFFBF5),
                    secondaryContainer: Color(0xFF28A745),
                    title: 'Rs 20,000',
                    subTitle: 'New Orders',
                    statusColor: Color(0xFF28A745),
                    icon: 'Cart',
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  ProfileContainer(
                    mainContainerColor: Color(0xFFF6F8FE),
                    secondaryContainer: Color(0xFF85C8F8),
                    title: '6',
                    subTitle: 'Products',
                    statusColor: Colors.transparent,
                    icon: 'products',
                  )
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  ProfileContainer(
                    mainContainerColor: Color(0xFFF6F8FE),
                    secondaryContainer: Color(0xFF85C8F8),
                    title: 'Rs 3,000',
                    subTitle: 'Today\'s Sales',
                    statusColor: Colors.transparent,
                    icon: 'Heartbeat',
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  ProfileContainer(
                    mainContainerColor: Color(0xFFEFFBF5),
                    secondaryContainer: Color(0xFF28A745),
                    title: '90',
                    subTitle: 'Daily Visitors',
                    statusColor: Colors.transparent,
                    icon: 'visitors',
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  ProfileSmallContainer(
                    onTap: () {
                      Navigator.pushNamed(context, OrderPage.id);
                    },
                    icon: 'Cart',
                    text: 'Orders',
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  ProfileSmallContainer(
                    onTap: () {
                      Navigator.pushNamed(context, Try.id);
                    },
                    icon: 'products',
                    text: 'Products',
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  ProfileSmallContainer(
                    onTap: () {
                      Navigator.pushNamed(context, MyFarm.id);
                    },
                    icon: 'Heartbeat',
                    text: 'Farm',
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  ProfileSmallContainer(
                    icon: 'Receipt',
                    text: 'Trainings',
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  ProfileSmallContainer(
                    icon: 'Star',
                    text: 'Reviews',
                    onTap: () {
                      Navigator.pushNamed(context, FarmReview.id);
                    },
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  ProfileSmallContainer(
                    icon: 'User',
                    text: 'Account',
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              profile4containers(
                icon: 'Settings',
                title: 'Settings',
              ),
              SizedBox(
                height: 16.h,
              ),
              profile4containers(
                icon: 'Info circle',
                title: 'About Us',
              ),
              SizedBox(
                height: 16.h,
              ),
              profile4containers(
                icon: 'Info circle',
                title: 'FAQs',
              ),
              SizedBox(
                height: 16.h,
              ),
              profile4containers(
                icon: 'Logout',
                title: 'Sign Out',
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class profile4containers extends StatelessWidget {
  final String icon;
  final String title;
  profile4containers({required this.icon, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 312.w,
      decoration: BoxDecoration(
        color: Color(0xFFF2F7F6),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Image.asset('lib/icons/$icon.png'),
              ),
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFF585664),
                  fontFamily: 'poppins',
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Image.asset('lib/icons/arrowLeft.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProfileSmallContainer extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback? onTap;

  ProfileSmallContainer({
    required this.icon,
    required this.text,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 96.h,
        width: 96.w,
        decoration: BoxDecoration(
          color: Color(0xFFEFF4F4),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'lib/icons/$icon.png',
                color: Colors.black,
                height: 24.h,
                width: 24.w,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: 'poppins',
                  color: Color(0xFF5F6F79),
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  final Color mainContainerColor;
  final Color secondaryContainer;
  final String title;
  final String subTitle;
  final Color statusColor;
  final String icon;

  ProfileContainer({
    required this.mainContainerColor,
    required this.secondaryContainer,
    required this.title,
    required this.subTitle,
    required this.statusColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      decoration: BoxDecoration(
        color: mainContainerColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45.h,
              width: 45.w,
              decoration: BoxDecoration(
                color: secondaryContainer,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Center(
                child: Image.asset(
                  'lib/icons/$icon.png',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  subTitle,
                  style: TextStyle(
                    color: Color(0xFF5F6F79),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 14.w,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                    child: Text(
                      '4',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
