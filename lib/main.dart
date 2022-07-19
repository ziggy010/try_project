import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/Screens/farm_review.dart';
import 'package:try_project/Screens/farmscreen.dart';
import 'package:try_project/Screens/hotproductsscreen.dart';
import 'package:try_project/Screens/myproducts.dart';
import 'package:try_project/pages/product_rate.dart';
import 'package:try_project/Screens/signin.dart';
import 'package:try_project/home.dart';
import 'package:try_project/pages/my_farm_page.dart';
import 'package:try_project/pages/orders_page.dart';
import 'package:try_project/pages/try.dart';
import 'pages/try.dart';
import 'bottom_nav_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: ((context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: UserSignin.id,
          routes: {
            UserSignin.id: (context) => UserSignin(),
            Home.id: (context) => Home(),
            BottomNavbar.id: (context) => BottomNavbar(),
            FarmReview.id: (context) => FarmReview(),
            MyFarm.id: (context) => MyFarm(),
            FarmScreen.id: (context) => FarmScreen(),
            HotScreen.id: (context) => HotScreen(),
            ProductRate.id: (context) => ProductRate(),
            MyProduct.id: (context) => MyProduct(),
            ProductRate.id: (context) => ProductRate(),
            OrderPage.id: (context) => OrderPage(),
            Try.id: (context) => Try(),
          },
        );
      }),
    );
  }
}
