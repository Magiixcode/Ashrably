import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/splash/spalsh_six.dart';
import 'package:ashrably_app/widget/ask_text.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Splash5 extends StatefulWidget {
  const Splash5({super.key, required this.liters});
  final double liters;
  @override
  State<Splash5> createState() => _Splash5State();
}

class _Splash5State extends State<Splash5> {
  double cupSize = 100;
  List<double> items = [100, 150, 200, 250, 300, 350, 400, 450];

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
              'assets/images/Ellipse 3 splash5.png',
            )),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: MediaQuery.of(context).size.width / 15,
            right: MediaQuery.of(context).size.width / 15,
            child: AskText(
              textAlign: TextAlign.center,
              horizontal: 0,
              vertical: 10,
              text:
                  'تقريبا كدا ايه حجم الكوباية اللي هتشربها في المرة الواحدة؟',
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.8,
            left: MediaQuery.of(context).size.width / 4,
            right: MediaQuery.of(context).size.width / 4,
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Center(
                child: DropdownButton(
                  items: items.map((double item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text("${item.toInt()} ملى "),
                    );
                  }).toList(),
                  onChanged: (double? newValue) {
                    setState(() {
                      cupSize = newValue!;
                    });
                  },
                  value: cupSize,
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
          NextButton(
            page: Spalsh6(
              liters: widget.liters,
              sizeCup: cupSize,
            ),
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
    );
  }
}
