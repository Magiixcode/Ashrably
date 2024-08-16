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
            top: 0,
            right: 0,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse 33.png',
            )),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse bottom right1.png',
            )),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3.5,
            left: MediaQuery.of(context).size.width / 9,
            right: MediaQuery.of(context).size.width / 9,
            child: Image.asset(
              'assets/images/water.png',
              height: 250,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 4,
            left: MediaQuery.of(context).size.width / 20,
            right: MediaQuery.of(context).size.width / 20,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                maxLines: 3,
                textAlign: TextAlign.center,
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
          NextButton(
            page: const Spalsh4(),
            iconColor: Colors.white,
            text: 'يلا بينا',
            padding: 20,
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
    );
  }
}
