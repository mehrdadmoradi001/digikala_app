import 'package:digikala_app/constants/colors_constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = PageController(viewportFraction: 0.8);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: controller,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        color: Colors.red,
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                bottom: 10,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    expansionFactor: 4,
                    dotColor: Colors.white,
                    activeDotColor: ColorsConst.blueIndicator,
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
