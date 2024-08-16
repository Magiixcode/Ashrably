import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/splash/spalsh_three.dart';
import 'package:ashrably_app/widget/ask_text.dart';
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
          const Positioned(
            bottom: 0,
            right: 0,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse bottom right1.png',
            )),
          ),
          const Positioned(
            top: 0,
            right: 0,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse 3.png',
            )),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: MediaQuery.of(context).size.width / 9,
            right: MediaQuery.of(context).size.width / 9,
            child: AskText(
              text: "اشربلي تطبيق هيساعدك تشرب كمية المياة الي عاوزها ",
              horizontal: 30,
              vertical: 0,
              textAlign: TextAlign.center,
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse 2.png',
            )),
          ),
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
    );
  }
}
