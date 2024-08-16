import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/splash/spalsh_six.dart';
import 'package:ashrably_app/widget/ask_text.dart';
import 'package:ashrably_app/widget/custom_text-filed.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Splash5 extends StatefulWidget {
  Splash5({super.key});

  @override
  State<Splash5> createState() => _Splash5State();
}

class _Splash5State extends State<Splash5> {
  String _dropdownValue = '100 ml';
  var items = [
    '100 ml',
    '200 ml',
    '300 ml',
    '400 ml',
    '500 ml',
    '600 ml',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Image(
                    image: AssetImage(
                  'assets/images/Ellipse bottom right1.png',
                )),
              ),
              Column(
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
                    textAlign: TextAlign.right,
                    horizontal: 80,
                    vertical: 50,
                    text:
                        'تقريبا كدا ايه حجم الكوباية اللي هتشربها في المرة الواحدة؟',
                  ),
                  Container(
                    width: 100,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 340),
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
            ],
          ),
        ),
      ),
    );
  }
}
