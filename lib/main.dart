import 'package:digikala_app/widgets/banner_slider.dart';
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
        body: SafeArea(
          child: Column(
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
                          blurRadius: 40,
                          spreadRadius: -6,
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
              const Text('test'),
            ],
          ),
        ),
      ),
    );
  }
}
