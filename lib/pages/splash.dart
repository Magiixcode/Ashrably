import 'package:ashrably_app/widget/custom_background_blur.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff480CA8),
      body: Stack(
        children: [
          CustomBackgroundColor(direction: Alignment.bottomRight),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                      image: AssetImage(
                    'assets/images/Ellipse 3.png',
                  )),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              Center(
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
              Spacer(
                flex: 1,
              ),
              Row(
                children: [
                  Image(
                      image: AssetImage(
                    'assets/images/Ellipse 2.png',
                  )),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    'التالي',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {})
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
