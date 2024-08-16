import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/splash/spalsh_three.dart';
import 'package:ashrably_app/widget/custom_background_blur.dart';
import 'package:ashrably_app/widget/custom_ellipse.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse bottom right1.png',
            )),
          ),
          Column(
            children: [
              // CustomPaint(
              //   size: const Size(200, 100),
              //   painter: EllipsePainter(
              //     width: 332.05,
              //     hight: 369.5,
              //     top: -167,
              //     left: 214,
              //   ),
              // ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                      image: AssetImage(
                    'assets/images/Ellipse 3.png',
                  )),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              const Center(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  "اشربلي تطبيق هيساعدك تشرب كمية المياة الي عاوزها ",
                  style: TextStyle(
                    fontFamily: 'Marhey',
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
              const Spacer(
                flex: 1,
              ),
              Positioned(
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(
                        image: AssetImage(
                      'assets/images/Ellipse 2.png',
                    )),
                    NextButton(
                      page: const Splash3(),
                      iconColor: Colors.white,
                      text: 'التالي',
                      padding: 30,
                      styleText: const TextStyle(
                        fontFamily: 'Marhey',
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      icon: Icons.arrow_forward_ios,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
