import 'package:ashrably_app/constens.dart';
import 'package:ashrably_app/pages/spalsh_six.dart';
import 'package:ashrably_app/widget/ask_text.dart';
import 'package:ashrably_app/widget/custom_text-filed.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Splash5 extends StatelessWidget {
  const Splash5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff480CA8),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
      ),
    );
  }
}
