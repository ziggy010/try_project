import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/Components/review_box.dart';
import 'package:try_project/constants.dart';

class FarmReview extends StatelessWidget {
  static const String id = 'farmReview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'Farm reviews',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          bottom: 24.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ReviewBox(
                fullname: 'Risab Tajale',
                initialRating: 4,
                reviewPara:
                    'One of the promising farm in the country,fast deliveris love the service. The products are fresh and the price is affordable',
                date: '17 July 2022',
              ),
              ReviewBox(
                fullname: 'Risab Tajale',
                initialRating: 4,
                reviewPara:
                    'Lorem ipsum dolor sit met, consetetur sadipscing elitr, sed diam nonumy eirmodtempor invidunt ut labore et dolore magna diam nonumy eirmodtempor invidunt ut labore et dolore magna',
                date: '17 July 2022',
              ),
              ReviewBox(
                fullname: 'Risab Tajale',
                initialRating: 4,
                reviewPara:
                    'One of the promising farm in the country,fast deliveris love the service. The products are fresh and the price is affordable',
                date: '17 July 2022',
              ),
              ReviewBox(
                fullname: 'Risab Tajale',
                initialRating: 4,
                reviewPara:
                    'Lorem ipsum dolor sit met, consetetur sadipscing elitr, sed diam nonumy eirmodtempor invidunt ut labore et dolore magna diam nonumy eirmodtempor invidunt ut labore et dolore magna',
                date: '17 July 2022',
              ),
              ReviewBox(
                fullname: 'Risab Tajale',
                initialRating: 4,
                reviewPara:
                    'One of the promising farm in the country,fast deliveris love the service. The products are fresh and the price is affordable',
                date: '17 July 2022',
              ),
              ReviewBox(
                fullname: 'Risab Tajale',
                initialRating: 4,
                reviewPara:
                    'Lorem ipsum dolor sit met, consetetur sadipscing elitr, sed diam nonumy eirmodtempor invidunt ut labore et dolore magna diam nonumy eirmodtempor invidunt ut labore et dolore magna',
                date: '17 July 2022',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
