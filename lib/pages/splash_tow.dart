import 'package:ashrably_app/constens.dart';
import 'package:ashrably_app/pages/spalsh_three.dart';
import 'package:ashrably_app/widget/custom_background_blur.dart';
import 'package:ashrably_app/widget/custom_ellipse.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Stack(
        children: [
          CustomBackgroundColor(direction: Alignment.bottomRight),
          Column(
            children: [
              CustomPaint(
                size: const Size(200, 100),
                painter: EllipsePainter(
                  width: 332.05,
                  hight: 369.5,
                  top: -167,
                  left: 214,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Image(
                  //     image: AssetImage(
                  //   'assets/images/Ellipse 3.png',
                  // )),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const Splash3();
                            },
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Row(
                          children: [
                            Text(
                              'التالي',
                              style: TextStyle(
                                fontFamily: 'Marhey',
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
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
