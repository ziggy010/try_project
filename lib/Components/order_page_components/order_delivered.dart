import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/Components/order_page_components/heading_container.dart';
import 'package:try_project/Components/order_page_components/middle_container.dart';
import 'package:try_project/Components/order_page_components/order_date_container.dart';
import 'package:try_project/Components/order_page_components/total_pricr_container.dart';

class OrderDelivered extends StatelessWidget {
  const OrderDelivered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            OrderDeliveredPage(
              farmName_: 'Shiwani Agro Farm',
              rating_: 4,
              vegetable_One: 'Spinich - 10 KG',
              pricePerKg_One: 'Rs 50 per KG',
              totalPricePerVegetable_One: 'Rs 500',
              vegetable_Two: 'Tomatoes - 30 KG',
              pricePerKg_Two: 'Rs 70 per KG',
              totalPricePerVegetable_Two: 'Rs 2100',
              totalFinalPrice_: 'Rs 2700',
              orderDate_: '7 JUL 2022',
              deliverDate_: '9 JUL 2022',
            ),
            OrderDeliveredPage(
              farmName_: 'Ezy Agro Farm',
              rating_: 3,
              vegetable_One: 'Mangoes - 10 KG',
              pricePerKg_One: 'Rs 90 per KG',
              totalPricePerVegetable_One: 'Rs 900',
              vegetable_Two: 'Onions - 30 KG',
              pricePerKg_Two: 'Rs 70 per KG',
              totalPricePerVegetable_Two: 'Rs 2100',
              totalFinalPrice_: 'Rs 3000',
              orderDate_: '7 JUL 2022',
              deliverDate_: '9 JUL 2022',
            ),
          ],
        ),
      ),
    );
  }
}

class OrderDeliveredPage extends StatelessWidget {
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
  final String deliverDate_;

  OrderDeliveredPage({
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
    required this.deliverDate_,
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
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.h),
                child: Column(
                  children: [
                    HeadingContainer(
                      farmName: farmName_,
                      rating: rating_,
                      containerColor: Color(0xFFD9F9E8),
                      textColor: Color(0xFF28A745),
                      containerText: 'Order delivered',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(
                      color: Color(0xFFE6E6E6),
                      thickness: 2,
                    ),
                    MiddleContainers(
                      vegetables: vegetable_One,
                      pricePerKg: pricePerKg_One,
                      totalPrice: totalPricePerVegetable_One,
                    ),
                    Divider(
                      color: Color(0xFFE6E6E6),
                      thickness: 2,
                    ),
                    MiddleContainers(
                      vegetables: vegetable_Two,
                      pricePerKg: pricePerKg_Two,
                      totalPrice: totalPricePerVegetable_Two,
                    ),
                    Divider(
                      color: Color(0xFFE6E6E6),
                      thickness: 2,
                    ),
                    TotalPriceContainer(totalFinalPrice: totalFinalPrice_),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              // height: 49.h,
                              width: 287.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFECECEC),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Ordered date:',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          orderDate_,
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Delivered date:',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          deliverDate_,
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
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
