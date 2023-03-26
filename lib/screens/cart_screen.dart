import 'package:digikala_app/constants/colors_constants.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.backgroundScreenColor,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              CustomScrollView(
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
                          children: const [
                            Expanded(
                              child: Text(
                                'سبد خرید',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'sb',
                                    fontSize: 16,
                                    color: ColorsConst.blue),
                              ),
                            ),
                            Image(
                              image: AssetImage(
                                  'assets/images/icon_apple_blue.png'),
                            ),
                            SizedBox(width: 15),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return const CardItem();
                      },
                      childCount: 10,
                    ),
                  ),
                  const SliverPadding(
                    padding: EdgeInsets.only(bottom: 100),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44,vertical: 20),
                child: SizedBox(
                  height: 53,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsConst.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'ادامه فرایند خرید',
                      style: TextStyle(fontSize: 18, fontFamily: 'sm'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 249,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 44, right: 44, top: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset('assets/images/iphone.png'),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'آیفون ۱۳ پرومکس دوسیم کارت',
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'sb',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          'گارانتی 18 ماه مدیا پردازش',
                          style: TextStyle(
                            fontFamily: 'sm',
                            fontSize: 10,
                            color: ColorsConst.gery,
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              '۴۶٬۰۰۰٬۰۰۰',
                              style: TextStyle(
                                fontFamily: 'sm',
                                fontSize: 12,
                                color: ColorsConst.gery,
                              ),
                            ),
                            const Text(
                              'تومان',
                              style: TextStyle(
                                fontFamily: 'sm',
                                fontSize: 10,
                                color: ColorsConst.gery,
                              ),
                            ),
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
                          ],
                        ),
                        Wrap(
                          children: const [
                            OptionCheap(),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: DottedLine(
              lineThickness: 3.0,
              dashGapLength: 3.0,
              dashLength: 8.0,
              dashColor: ColorsConst.gery.withOpacity(0.5),
              dashGapColor: Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '۴۶٬۰۰۰٬۰۰۰',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'تومان',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OptionCheap extends StatelessWidget {
  const OptionCheap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: ColorsConst.gery),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('11111'),
            SizedBox(width: 10),
            Image.asset('assets/images/icon_options.png'),
          ],
        ),
      ),
    );
  }
}
