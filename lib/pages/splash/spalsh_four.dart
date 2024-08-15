import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/splash/splash_five.dart';
import 'package:ashrably_app/widget/ask_text.dart';
import 'package:ashrably_app/widget/custom_text-filed.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Spalsh4 extends StatelessWidget {
  const Spalsh4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: -60,
            left: -35,
            child: Image.asset(
              'assets/images/man_water.png',
              height: 450,
            ),
          ),
          Positioned(
            bottom: 50,
            right: 0,
            child: NextButton(
              page: Splash5(),
              iconColor: Colors.white,
              text: "!اللي بعدو",
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
          Positioned(
            bottom: 500,
            left: 10,
            right: 10,
            child: AskText(
              textAlign: TextAlign.center,
              horizontal: 20,
              vertical: 20,
              text: "عاوز تشرب كام لتر في اليوم ؟",
            ),
          ),
          const Positioned(bottom: 350, left: 130, child: CustomTextFiled()),
        ],
      ),
    );
  }
}
