import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/splash/spalsh_four.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Stack(
        children: [
          const Positioned(
            bottom: 0,
            right: 0,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse bottom right1.png',
            )),
          ),
          Positioned(
            bottom: kButtonPadding,
            right: 15,
            child: NextButton(
              page: const Spalsh4(),
              iconColor: Colors.white,
              text: 'يلا بينا',
              padding: 30,
              styleText: const TextStyle(
                fontFamily: 'Marhey',
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              icon: Icons.arrow_forward_ios,
            ),
          ),
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                      image: AssetImage(
                    'assets/images/Ellipse 33.png',
                  )),
                ],
              ),
              Positioned(
                top: 150,
                left: 15,
                right: 15,
                child: Image.asset(
                  'assets/images/water.png',
                  height: 250,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Positioned(
                bottom: 200,
                left: 15,
                right: 35,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    maxLines: 3,
                    textAlign: TextAlign.right,
                    "بتشرب مياة قليل او بتنشغل هساعدك تشرب الكمية اللي تحبها بدون تعقيد ",
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
