import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/splash/splash_five.dart';
import 'package:ashrably_app/widget/ask_text.dart';
import 'package:ashrably_app/widget/custom_text-filed.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Spalsh4 extends StatefulWidget {
  const Spalsh4({super.key});

  @override
  State<Spalsh4> createState() => _Spalsh4State();
}

class _Spalsh4State extends State<Spalsh4> {
  String _dropdownValue = '1';
  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse bottom right1.png',
            )),
          ),
          Positioned(
            bottom: 650,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse 3 right.png',
            )),
          ),
          Positioned(
            bottom: -60,
            left: -15,
            child: Image.asset(
              'assets/images/man_water.png',
              height: 450,
            ),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            child: NextButton(
              page: Splash5(),
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
          ),
          Positioned(
            bottom: 450,
            left: 10,
            right: 10,
            child: AskText(
              textAlign: TextAlign.center,
              horizontal: 20,
              vertical: 20,
              text: "عاوز تشرب كام لتر في اليوم ؟",
            ),
          ),
          Positioned(
            bottom: 370,
            left: 160,
            child: Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Center(
                child: DropdownButton(
                  items: items.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _dropdownValue = newValue!;
                    });
                  },
                  value: _dropdownValue,
                  borderRadius: BorderRadius.circular(10),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 20,
                  style: TextStyle(
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
