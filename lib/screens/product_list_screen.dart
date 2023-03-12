import 'package:digikala_app/constants/colors_constants.dart';
import 'package:digikala_app/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 33,
                    right: 33,
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
                            'دسته بندی',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'sb',
                                fontSize: 16,
                                color: ColorsConst.blue),
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
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 33),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    ((context, index) {
                      return const ProductItem();
                    }),
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      //mainAxisExtent: 1,
                      childAspectRatio: 2/2.8,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
