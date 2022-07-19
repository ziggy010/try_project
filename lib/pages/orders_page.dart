import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/Components/order_page_components/order_cancel_page.dart';
import 'package:try_project/Components/order_page_components/order_delivered.dart';
import 'package:try_project/Components/order_page_components/order_pending.dart';
import 'package:try_project/Components/three_textfield.dart';
import 'package:try_project/bottom_nav_bar.dart';
import 'package:try_project/constants.dart';

class OrderPage extends StatefulWidget {
  static const String id = 'OrderPage';

  @override
  State<OrderPage> createState() => _OrderPageState();
}

enum Tab {
  pending,
  delivered,
  cancelled,
}

class _OrderPageState extends State<OrderPage> {
  Color selectedContainerColor = Color(0xFF28A745);

  Color unSelectedContainerColor = Color(0xFFE7F8EF);

  Color unSelectedText = Color(0xFFA6AEB7);

  Tab tabSelected = Tab.pending;

  int onPageNumber = 0;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.popAndPushNamed(context, BottomNavbar.id),
        ),
        backgroundColor: kNavbarColor,
        elevation: 0,
        title: Text(
          'Orders',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
              height: 40.h,
              width: 312.w,
              decoration: BoxDecoration(
                color: Color(0xFFE7F8EF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabSelected = Tab.pending;
                        pageController.jumpToPage(0);
                      });
                    },
                    child: Container(
                      height: 40.h,
                      width: 102.w,
                      decoration: BoxDecoration(
                        color: tabSelected == Tab.pending
                            ? selectedContainerColor
                            : unSelectedContainerColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Pending',
                          style: TextStyle(
                            color: tabSelected == Tab.pending
                                ? Colors.white
                                : unSelectedText,
                            fontSize: 13.sp,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabSelected = Tab.delivered;
                        pageController.jumpToPage(1);
                      });
                    },
                    child: Container(
                      height: 40.h,
                      width: 102.w,
                      decoration: BoxDecoration(
                        color: tabSelected == Tab.delivered
                            ? selectedContainerColor
                            : unSelectedContainerColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Delivered',
                          style: TextStyle(
                            color: tabSelected == Tab.delivered
                                ? Colors.white
                                : unSelectedText,
                            fontSize: 13.sp,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabSelected = Tab.cancelled;
                        pageController.jumpToPage(2);
                      });
                    },
                    child: Container(
                      height: 40.h,
                      width: 102.w,
                      decoration: BoxDecoration(
                        color: tabSelected == Tab.cancelled
                            ? selectedContainerColor
                            : unSelectedContainerColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Cancelled',
                          style: TextStyle(
                            color: tabSelected == Tab.cancelled
                                ? Colors.white
                                : unSelectedText,
                            fontSize: 13.sp,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: 312.w,
                child: Stack(
                  children: [
                    PageView(
                      controller: pageController,
                      onPageChanged: (index) {
                        setState(() {
                          onPageNumber = index;
                          if (onPageNumber == 0) {
                            tabSelected = Tab.pending;
                          } else if (onPageNumber == 1) {
                            tabSelected = Tab.delivered;
                          } else {
                            tabSelected = Tab.cancelled;
                          }
                        });
                      },
                      children: [
                        OrderPending(),
                        OrderDelivered(),
                        OrderCancelPage(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
