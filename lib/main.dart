import 'dart:ui';

import 'package:digikala_app/constants/colors_constants.dart';
import 'package:digikala_app/screens/category_screen.dart';
import 'package:digikala_app/screens/home_screen.dart';
import 'package:digikala_app/screens/product_detail_screen.dart';
import 'package:digikala_app/screens/product_list_screen.dart';
import 'package:digikala_app/screens/profile_screen.dart';
import 'package:digikala_app/widgets/banner_slider.dart';
import 'package:digikala_app/widgets/product_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedBottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: ColorsConst.backgroundScreenColor,
        body: ProductDetailScreen(),
/*        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: BottomNavigationBar(
              onTap: (int index) {
                setState(() {
                  selectedBottomNavigationIndex = index;
                });
              },
              currentIndex: selectedBottomNavigationIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedLabelStyle: const TextStyle(
                  fontFamily: 'sb', fontSize: 10, color: ColorsConst.blue),
              unselectedLabelStyle: const TextStyle(
                  fontFamily: 'sb', fontSize: 10, color: Colors.black),
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icon_home.png'),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Container(
                        child:
                            Image.asset('assets/images/icon_home_active.png'),
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
                    ),
                    label: 'خانه'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icon_basket.png'),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Container(
                        child:
                            Image.asset('assets/images/icon_basket_active.png'),
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
                    ),
                    label: 'سبد خرید'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icon_category.png'),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Container(
                        child: Image.asset(
                            'assets/images/icon_category_active.png'),
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
                    ),
                    label: 'دسته بندی'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icon_profile.png'),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Container(
                        child: Image.asset(
                            'assets/images/icon_profile_active.png'),
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
                    ),
                    label: 'حساب کاربری'),
              ],
            ),
          ),
        ),*/
      ),
    );
  }

  List<Widget> _getScreen() {
    return <Widget>[
      const HomeScreen(),
      const CategoryScreen(),
      const ProductListScreen(),
      const ProfileScreen(),
    ];
  }
}
