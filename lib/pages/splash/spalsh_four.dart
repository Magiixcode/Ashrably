import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/splash/splash_five.dart';
import 'package:ashrably_app/widget/ask_text.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Spalsh4 extends StatefulWidget {
  const Spalsh4({super.key});

  @override
  State<Spalsh4> createState() => _Spalsh4State();
}

class _Spalsh4State extends State<Spalsh4> {
  double liters = 1;
  List<double> items = [1, 2, 3, 4, 5, 6];
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
            top: 0,
            left: 0,
            child: Image(
              image: const AssetImage(
                'assets/images/Ellipse 3 right.png',
              ),
              height: MediaQuery.of(context).size.height / 4,
            ),
          ),
          Positioned(
            bottom: -16,
            left: -20,
            child: Image(
              image: const AssetImage('assets/images/man_water.png'),
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 1.5,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: 10,
            right: 10,
            child: AskText(
              textAlign: TextAlign.center,
              horizontal: 20,
              vertical: 20,
              text: "عاوز تشرب كام لتر في اليوم ؟",
            ),
          ),
          NextButton(
            page: Splash5(
              liters: liters,
            ),
            iconColor: Colors.white,
            text: "!اللي بعدو",
            padding: 20,
            styleText: const TextStyle(
              fontFamily: 'Marhey',
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            icon: Icons.arrow_forward_ios,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 2,
            left: MediaQuery.of(context).size.width / 3,
            right: MediaQuery.of(context).size.width / 3,
            child: Container(
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Center(
                child: DropdownButton(
                  items: items.map((double item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(
                        " $item لتر ",
                        textDirection: TextDirection.rtl,
                      ),
                    );
                  }).toList(),
                  onChanged: (double? newValue) {
                    setState(() {
                      liters = newValue!;
                    });
                  },
                  value: liters,
                  borderRadius: BorderRadius.circular(10),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 20,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  underline: Container(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
