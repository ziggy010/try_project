import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlideShow extends StatelessWidget {
  const SlideShow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      initialPage: 0, indicatorColor: Colors.white,
      indicatorBackgroundColor: Colors.grey,

      onPageChanged: (value) {
        print('Page changed: $value');
      },

      // autoPlayInterval: 10000,

      isLoop: true,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 18.0.w, right: 18.w),
          child: Stack(children: [
            Container(
              height: 200.h,
              width: 380.w,
              // child: HotProducts(),
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      'lib/assets/image/agr.png',
                    ),
                    fit: BoxFit.cover),
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
            ),
            Container(
              height: 180.h,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(6, 85, 4, 0),
                    Color(0xFF013118),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 22.0.h, left: 20.w),
                child: Text(
                  'Connecting you with farming \nand agriculture',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18.0.w, right: 18.w),
          child: Container(
            height: 200.h,
            width: 380.w,
            // child: HotProducts(),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(
                    'lib/assets/image/agr.png',
                  ),
                  fit: BoxFit.cover),
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(12.r)),
            ),
            child: Container(
              height: 180.h,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(6, 85, 4, 0),
                    Color(0xFF013118),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 22.0.h, left: 20.w),
                child: Text(
                  'Agriculture Benefits',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18.0.w, right: 18.w),
          child: Container(
            height: 200.h,
            width: 380.w,
            // child: HotProducts(),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(
                    'lib/assets/image/agr.png',
                  ),
                  fit: BoxFit.cover),
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(12.r)),
            ),
            child: Container(
              height: 180.h,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(6, 85, 4, 0),
                    Color(0xFF013118),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 22.0.h, left: 20.w),
                child: Text(
                  'Developing the Nation.',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
