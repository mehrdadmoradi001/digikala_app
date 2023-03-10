import 'package:digikala_app/constants/colors_constants.dart';
import 'package:digikala_app/main.dart';
import 'package:digikala_app/widgets/banner_slider.dart';
import 'package:digikala_app/widgets/category_icon_item_chip.dart';
import 'package:digikala_app/widgets/product_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                            child: CategoryItemChip());
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
                        image:
                            AssetImage('assets/images/icon_left_categroy.png'),
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
                    height: 232,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 32),
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
                        image:
                            AssetImage('assets/images/icon_left_categroy.png'),
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
                    height: 232,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 32),
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
    );
  }
}

