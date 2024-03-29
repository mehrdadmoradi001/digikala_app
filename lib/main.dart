import 'dart:ui';
import 'package:digikala_app/constants/colors_constants.dart';
import 'package:digikala_app/data/datasource/authentication_datasource.dart';
import 'package:digikala_app/data/repository/authentication_repository.dart';
import 'package:digikala_app/di/di.dart';
import 'package:digikala_app/screens/cart_screen.dart';
import 'package:digikala_app/screens/home_screen.dart';
import 'package:digikala_app/screens/product_list_screen.dart';
import 'package:digikala_app/screens/profile_screen.dart';
import 'package:digikala_app/util/auth_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getItInit();
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
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    var either = await AuthenticationRepository()
                        .login('mehrdadmoradi012345', '12345678');
                  },
                  child: Text('LogIn'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    AuthManager.logOut();
                  },
                  child: Text('LogOut'),
                ),
                ValueListenableBuilder(
                  valueListenable: AuthManager.authChangeNotifier,
                  builder: (context, value, child) {
                      if(value == null || value.isEmpty){
                        return Text('شما وارد نشده اید',style: TextStyle(fontSize: 20),);
                      }else{
                        return Text('شما وارد شده اید',style: TextStyle(fontSize: 20),);
                      }
                    },),
              ],
            ),
          ),
        ) /*IndexedStack(
          index: selectedBottomNavigationIndex,
          children: _getScreen(),
        )*/
        ,
        bottomNavigationBar: ClipRRect(
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
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: ColorsConst.blue,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: Offset(0.0, 10),
                            ),
                          ],
                        ),
                        child:
                            Image.asset('assets/images/icon_home_active.png'),
                      ),
                    ),
                    label: 'خانه'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icon_basket.png'),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Container(
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
                        child:
                            Image.asset('assets/images/icon_basket_active.png'),
                      ),
                    ),
                    label: 'سبد خرید'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icon_category.png'),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: ColorsConst.blue,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: Offset(0.0, 10),
                            ),
                          ],
                        ),
                        child: Image.asset(
                            'assets/images/icon_category_active.png'),
                      ),
                    ),
                    label: 'دسته بندی'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icon_profile.png'),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: ColorsConst.blue,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: Offset(0.0, 10),
                            ),
                          ],
                        ),
                        child: Image.asset(
                            'assets/images/icon_profile_active.png'),
                      ),
                    ),
                    label: 'حساب کاربری'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _getScreen() {
    return <Widget>[
      const HomeScreen(),
      const CartScreen(),
      const ProductListScreen(),
      const ProfileScreen(),
    ];
  }
}
