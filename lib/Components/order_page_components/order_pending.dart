import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'heading_container.dart';
import 'middle_container.dart';
import 'order_date_container.dart';
import 'total_pricr_container.dart';

class OrderPending extends StatelessWidget {
  const OrderPending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            PendingOrderContainer(
              farmName_: 'Shiwani Agro Farm',
              rating_: 4,
              vegetable_One: 'Spinich - 10 KG',
              pricePerKg_One: 'Rs 50 per KG',
              totalPricePerVegetable_One: 'Rs 500',
              vegetable_Two: 'Tomatoes - 30 KG',
              pricePerKg_Two: 'Rs 70 per KG',
              totalPricePerVegetable_Two: 'Rs 2100',
              totalFinalPrice_: 'Rs 2600',
              orderDate_: '7 JUL 2022',
            ),
            PendingOrderContainer(
              farmName_: 'Ezy share farm',
              rating_: 5,
              vegetable_One: 'Mangoes - 10 KG',
              pricePerKg_One: 'Rs 80 per KG',
              totalPricePerVegetable_One: 'Rs 800',
              vegetable_Two: 'Onions - 30 KG',
              pricePerKg_Two: 'Rs 70 per KG',
              totalPricePerVegetable_Two: 'Rs 2100',
              totalFinalPrice_: 'Rs 3200',
              orderDate_: '18 JUL 2022',
            ),
          ],
        ),
      ),
    );
  }
}

class PendingOrderContainer extends StatelessWidget {
  final String farmName_;
  final double rating_;
  final String vegetable_One;
  final String pricePerKg_One;
  final String totalPricePerVegetable_One;
  final String vegetable_Two;
  final String pricePerKg_Two;
  final String totalPricePerVegetable_Two;
  final String totalFinalPrice_;
  final String orderDate_;

  PendingOrderContainer({
    required this.farmName_,
    required this.rating_,
    required this.vegetable_One,
    required this.pricePerKg_One,
    required this.totalPricePerVegetable_One,
    required this.vegetable_Two,
    required this.pricePerKg_Two,
    required this.totalPricePerVegetable_Two,
    required this.totalFinalPrice_,
    required this.orderDate_,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 320.w,
              decoration: BoxDecoration(
                color: Color(0xFFEFF4F4),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                child: Column(
                  children: [
                    HeadingContainer(
                      farmName: farmName_,
                      rating: rating_,
                      containerColor: Color(0xFFFFEDB6),
                      textColor: Color(0xFFBB7A1A),
                      containerText: 'Order pending',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(
                      color: Color(0xFFE6E6E6),
                      thickness: 1.0,
                    ),
                    MiddleContainers(
                      vegetables: vegetable_One,
                      pricePerKg: pricePerKg_One,
                      totalPrice: totalPricePerVegetable_One,
                    ),
                    Divider(
                      color: Color(0xFFE6E6E6),
                      thickness: 1.0,
                    ),
                    MiddleContainers(
                      vegetables: vegetable_Two,
                      pricePerKg: pricePerKg_Two,
                      totalPrice: totalPricePerVegetable_Two,
                    ),
                    Divider(
                      color: Color(0xFFE6E6E6),
                      thickness: 1.0,
                    ),
                    TotalPriceContainer(
                      totalFinalPrice: totalFinalPrice_,
                    ),
                    OrderDateContainer(
                      orderDate: orderDate_,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 42.h,
                            width: 147.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                color: Color(0xFFFFDDDD),
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Cancel Order',
                                style: TextStyle(
                                  color: Color(0xFFFF6D6D),
                                  fontFamily: 'poppins',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
