import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/Components/order_page_components/heading_container.dart';
import 'package:try_project/Components/order_page_components/order_date_container.dart';
import 'package:try_project/Components/order_page_components/total_pricr_container.dart';

import 'middle_container.dart';

class OrderCancelPage extends StatelessWidget {
  const OrderCancelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 320.w,
        child: Column(
          children: [
            OrderCancelledContainer(
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
            OrderCancelledContainer(
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

class OrderCancelledContainer extends StatelessWidget {
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

  OrderCancelledContainer({
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
      child: Container(
        width: 320.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Color(0xFFEFF4F4),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 24.h,
          ),
          child: Column(
            children: [
              HeadingContainer(
                farmName: farmName_,
                rating: rating_,
                containerColor: Color(0xFFFFE1DB),
                containerText: 'Order cancelled',
                textColor: Color(0xFFE63B2A),
              ),
              SizedBox(
                height: 8.h,
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
              OrderDateContainer(orderDate: '7 JUL 2022'),
            ],
          ),
        ),
      ),
    );
  }
}
