import 'package:ashrably_app/pages/spalsh_four.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff480CA8),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            Positioned(
              top: 150,
              left: 15,
              right: 15,
              child: Image.asset(
                'assets/images/water.png',
                height: 250,
              ),
            ),
            const Positioned(
              bottom: 200,
              left: 15,
              right: 35,
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
            Positioned(
              bottom: 50,
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
          ],
        ),
      ),
    );
  }
}
