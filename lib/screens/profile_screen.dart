import 'package:digikala_app/constants/colors_constants.dart';
import 'package:digikala_app/widgets/category_icon_item_chip.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.backgroundScreenColor,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 44,
                  right: 44,
                  bottom: 32,
                  top: 20,
                ),
                child: Container(
                  height: 46,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'حساب کاربری',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'sb',
                              fontSize: 16,
                              color: ColorsConst.blue),
                        ),
                      ),
                      Image(
                        image: AssetImage('assets/images/icon_apple_blue.png'),
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
              ),
              const Text(
                'مهرداد مرادی نظیف',
                style: TextStyle(fontFamily: 'sb', fontSize: 16),
              ),
              const Text(
                '09366222148',
                style: TextStyle(fontFamily: 'sm', fontSize: 10),
              ),
              const SizedBox(height: 30),
              Wrap(
                runSpacing: 20,
                spacing: 20,
                children: const [
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                ],
              ),
              const Spacer(),
              const Text(
                'اپل شاپ',
                style: TextStyle(
                    fontFamily: 'sm', fontSize: 10, color: ColorsConst.gery),
              ),
              const Text(
                'v-1.0.00',
                style: TextStyle(
                    fontFamily: 'sm', fontSize: 10, color: ColorsConst.gery),
              ),
              const Text(
                'Instagram.com/Mojava-dev',
                style: TextStyle(
                    fontFamily: 'sm', fontSize: 10, color: ColorsConst.gery),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
