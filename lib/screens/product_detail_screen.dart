import 'dart:ui';

import 'package:digikala_app/constants/colors_constants.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.backgroundScreenColor,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
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
                      children: [
                        const SizedBox(width: 15),
                        const Image(
                          image: AssetImage('assets/images/icon_back.png'),
                        ),
                        const Expanded(
                          child: Text(
                            'آیفون',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'sb',
                                fontSize: 16,
                                color: ColorsConst.blue),
                          ),
                        ),
                        Image.asset('assets/images/icon_apple_blue.png'),
                        const SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'آیفون Se 2022',
                    style: TextStyle(
                        fontFamily: 'sb', fontSize: 16, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 44),
                  child: Container(
                    height: 284,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                              top: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                    'assets/images/icon_favorite_deactive.png'),
                                const Spacer(),
                                SizedBox(
                                  height: double.infinity,
                                  child:
                                      Image.asset('assets/images/iphone.png'),
                                ),
                                const Spacer(),
                                const Text(
                                  '4.6',
                                  style: TextStyle(
                                      fontFamily: 'SM',
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                                Image.asset('assets/images/icon_star.png'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 70,
                                  width: 70,
                                  margin: const EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    border: Border.all(
                                        width: 1, color: ColorsConst.gery),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child:
                                        Image.asset('assets/images/iphone.png'),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 44, left: 44, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'انتخاب رنگ',
                        style: TextStyle(
                          fontFamily: 'SM',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 26,
                            width: 26,
                            decoration: const BoxDecoration(
                              color: ColorsConst.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 26,
                            width: 26,
                            decoration: const BoxDecoration(
                              color: ColorsConst.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 26,
                            width: 26,
                            decoration: const BoxDecoration(
                              color: ColorsConst.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 44, left: 44, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'انتخاب حافظه داخلی',
                        style: TextStyle(
                          fontFamily: 'SM',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 19,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(width: 1, color: ColorsConst.gery),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Center(
                                child: Text(
                                  '128',
                                  style:
                                      TextStyle(fontSize: 12, fontFamily: 'SB'),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 19,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(width: 1, color: ColorsConst.gery),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Center(
                                child: Text(
                                  '128',
                                  style:
                                      TextStyle(fontSize: 12, fontFamily: 'SB'),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 19,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(width: 1, color: ColorsConst.gery),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Center(
                                child: Text(
                                  '128',
                                  style:
                                      TextStyle(fontSize: 12, fontFamily: 'SB'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 44,
                    right: 44,
                    top: 24,
                  ),
                  child: Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: ColorsConst.gery, width: 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'مشخصات فنی',
                            style: TextStyle(
                                fontFamily: 'SM',
                                fontSize: 12,
                                color: Colors.black),
                          ),
                          const Spacer(),
                          const Text(
                            'مشاهده',
                            style: TextStyle(
                                fontFamily: 'SB',
                                fontSize: 12,
                                color: ColorsConst.blue),
                          ),
                          const SizedBox(width: 10),
                          Image.asset('assets/images/icon_left_categroy.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 44,
                    right: 44,
                    top: 24,
                  ),
                  child: Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: ColorsConst.gery, width: 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'توضیحات محصول',
                            style: TextStyle(
                                fontFamily: 'SM',
                                fontSize: 12,
                                color: Colors.black),
                          ),
                          const Spacer(),
                          const Text(
                            'مشاهده',
                            style: TextStyle(
                                fontFamily: 'SB',
                                fontSize: 12,
                                color: ColorsConst.blue),
                          ),
                          const SizedBox(width: 10),
                          Image.asset('assets/images/icon_left_categroy.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 44,
                    right: 44,
                    top: 24,
                  ),
                  child: Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: ColorsConst.gery, width: 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'نظرات کاربران',
                            style: TextStyle(
                                fontFamily: 'SM',
                                fontSize: 12,
                                color: Colors.black),
                          ),
                          const SizedBox(width: 10),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                height: 26,
                                width: 26,
                                decoration: const BoxDecoration(
                                  color: ColorsConst.red,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 15,
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  height: 26,
                                  width: 26,
                                  decoration: const BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 30,
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  height: 26,
                                  width: 26,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 45,
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  height: 26,
                                  width: 26,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 60,
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  height: 26,
                                  width: 26,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '10+',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'SB',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            'مشاهده',
                            style: TextStyle(
                                fontFamily: 'SB',
                                fontSize: 12,
                                color: ColorsConst.blue),
                          ),
                          const SizedBox(width: 10),
                          Image.asset('assets/images/icon_left_categroy.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 44,
                    left: 44,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AddToBasketButton(),
                      PriceTagButton(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AddToBasketButton extends StatelessWidget {
  const AddToBasketButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 60,
          width: 120,
          decoration: const BoxDecoration(
            color: ColorsConst.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 40, sigmaX: 40),
            child: const SizedBox(
              height: 53,
              width: 140,
              child: Center(
                child: Text(
                  'افزدون به سبد خرید',
                  style: TextStyle(
                    fontFamily: 'SB',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PriceTagButton extends StatelessWidget {
  const PriceTagButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 60,
          width: 120,
          decoration: const BoxDecoration(
            color: ColorsConst.green,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 40, sigmaX: 40),
            child: SizedBox(
              height: 53,
              width: 140,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 16,
                      width: 25,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '%۳',
                          style: TextStyle(
                              fontFamily: 'sb',
                              fontSize: 10,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          '۴۶٬۰۰۰٬۰۰۰',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationThickness: 2,
                            fontFamily: 'sm',
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '۴۵٬۳۵۰٬۰۰۰',
                          style: TextStyle(
                            fontFamily: 'sm',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'تومان',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
