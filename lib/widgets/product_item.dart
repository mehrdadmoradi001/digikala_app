import 'package:digikala_app/constants/colors_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 160,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 10),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(child: Container()),
              const Image(
                image: AssetImage('assets/images/iphone.png'),
              ),
              const Positioned(
                top: 0,
                right: 10,
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image(
                    image: AssetImage('assets/images/active_fav_product.png'),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 6,
                    ),
                    child: Text(
                      '%۳',
                      style: TextStyle(
                          fontFamily: 'sb', fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Text(
              'آیفون ۱۳ پرومکس',
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 53,
            decoration: const BoxDecoration(
              color: ColorsConst.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: ColorsConst.blue,
                  blurRadius: 25,
                  spreadRadius: -12,
                  offset: Offset(0.0, 15),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'تومان',
                    style: TextStyle(
                      fontFamily: 'sm',
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 24,
                    child: Image(
                      image: AssetImage(
                          'assets/images/icon_right_arrow_cricle.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
