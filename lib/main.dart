import 'package:digikala_app/constants/colors_constants.dart';
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
                        children: const [
                          SizedBox(width: 15),
                          Image(
                            image: AssetImage('assets/images/icon_search.png'),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'جستجوی محصولات',
                              style: TextStyle(
                                  fontFamily: 'sb',
                                  fontSize: 16,
                                  color: ColorsConst.gery),
                            ),
                          ),
                          Image(
                            image:
                                AssetImage('assets/images/icon_apple_blue.png'),
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: BannerSlider(),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 44,
                      right: 44,
                      bottom: 20,
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'دسته بندی',
                          style: TextStyle(
                              fontFamily: 'sb',
                              fontSize: 12,
                              color: ColorsConst.gery),
                        )
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 44),
                    child: SizedBox(
                      height: 100,
                      child: ListView.builder(
                        itemCount: 20,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: CategoryHorizontalItemList());
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 44,
                      right: 44,
                      bottom: 20,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          'پرفروش ترین ها',
                          style: TextStyle(
                              fontFamily: 'sb',
                              fontSize: 12,
                              color: ColorsConst.gery),
                        ),
                        Spacer(),
                        Text(
                          'مشاهده همه',
                          style: TextStyle(
                              fontFamily: 'sb', color: ColorsConst.blue),
                        ),
                        SizedBox(width: 10),
                        Image(
                          image: AssetImage(
                              'assets/images/icon_left_categroy.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 44,
                    ),
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return const Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                              ),
                              child: ProductItem());
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 44,
                      right: 44,
                      bottom: 20,
                      top: 32,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          'پرفروش ترین ها',
                          style: TextStyle(
                              fontFamily: 'sb',
                              fontSize: 12,
                              color: ColorsConst.gery),
                        ),
                        Spacer(),
                        Text(
                          'مشاهده همه',
                          style: TextStyle(
                              fontFamily: 'sb', color: ColorsConst.blue),
                        ),
                        SizedBox(width: 10),
                        Image(
                          image: AssetImage(
                              'assets/images/icon_left_categroy.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 44,
                    ),
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return const Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                              ),
                              child: ProductItem());
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
