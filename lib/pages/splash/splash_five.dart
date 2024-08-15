import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/splash/spalsh_six.dart';
import 'package:ashrably_app/widget/ask_text.dart';
import 'package:ashrably_app/widget/custom_text-filed.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Splash5 extends StatelessWidget {
  Splash5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                      image: AssetImage(
                    'assets/images/Ellipse 3 splash5.png',
                  )),
                ],
              ),
              AskText(
                horizontal: 20,
                vertical: 50,
                text: 'عدد المرات اللي عاوز تشرب فيها؟',
              ),
              const CustomTextFiled(),
              AskText(
                horizontal: 20,
                vertical: 50,
                text: 'مستعد تشرب في المرة الواحدة قد ايه؟',
              ),
              const CustomTextFiled(),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Row(
                  children: [
                    const Spacer(),
                    NextButton(
                      page: const Spalsh6(),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
