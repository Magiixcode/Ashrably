import 'package:ashrably_app/constens.dart';
import 'package:ashrably_app/pages/home_pgae.dart';
import 'package:ashrably_app/pages/splash/drawer_page.dart';
import 'package:ashrably_app/widget/custom_text-filed.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Spalsh6 extends StatelessWidget {
  const Spalsh6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KPrimaryColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                textAlign: TextAlign.center,
                'ايه الوقت اللي عايز تشرب فيه؟',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFiled(),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'الي',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomTextFiled(),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'من',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Image.asset('assets/images/man_clock.png'),
              Row(
                children: [
                  const Spacer(),
                  NextButton(
                    page: const DrawerPage(),
                    iconColor: Colors.white,
                    text: "!يلا بينا",
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
            ]),
          ),
        ));
  }
}
