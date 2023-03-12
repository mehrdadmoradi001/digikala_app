import 'dart:ui';

import 'package:digikala_app/constants/colors_constants.dart';
import 'package:digikala_app/screens/category_screen.dart';
import 'package:digikala_app/screens/home_screen.dart';
import 'package:digikala_app/screens/product_list_screen.dart';
import 'package:digikala_app/widgets/banner_slider.dart';
import 'package:digikala_app/widgets/product_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: ColorsConst.backgroundScreenColor,
        appBar: AppBar(),
        body: const ProductListScreen(),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      child: Image.asset('assets/images/icon_home.png'),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: ColorsConst.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0.0, 10),
                          )
                        ],
                      ),
                    ),
                    label: 'home'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icon_basket.png'),
                    label: 'home'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icon_category.png'),
                    label: 'home'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icon_home.png'),
                    label: 'home'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
