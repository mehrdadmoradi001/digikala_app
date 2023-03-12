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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListScreen(),
    );
  }
}

class CategoryHorizontalItemList extends StatelessWidget {
  const CategoryHorizontalItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: ShapeDecoration(
                color: Colors.red,
                shadows: const [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 25,
                    spreadRadius: -12,
                    offset: Offset(0.0, 15),
                  )
                ],
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(40), //
                ),
              ),
            ),
            const Icon(
              Icons.mouse,
              color: Colors.white,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'موس',
          style: TextStyle(fontFamily: 'SB', fontSize: 12),
        ),
      ],
    );
  }
}
