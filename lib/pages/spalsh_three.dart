import 'package:ashrably_app/constens.dart';
import 'package:ashrably_app/pages/spalsh_four.dart';
import 'package:flutter/material.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Image.asset(
              'assets/images/water.png',
              height: 300,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                maxLines: 3,
                textAlign: TextAlign.center,
                "بتشرب مياة قليل او بتنشغل هساعدك تشرب الكمية اللي تحبها بدون تعقيد ",
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'يلا بينا',
                  style: TextStyle(
                    fontFamily: 'Marhey',
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Spalsh4();
                          },
                        ),
                      );
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
