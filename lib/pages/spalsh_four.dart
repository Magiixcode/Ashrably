import 'package:ashrably_app/widget/custom_text-filed.dart';
import 'package:flutter/material.dart';

class Spalsh4 extends StatelessWidget {
  const Spalsh4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff480CA8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "عاوز تشرب كام لتر في اليوم ؟",
              style: TextStyle(
                fontFamily: 'Marhey',
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextFiled(),
            Row(
              children: [
                Image.asset('assets/images/man_water.png'),
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
