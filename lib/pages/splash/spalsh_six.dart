import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/drawer/drawer_page.dart';
import 'package:ashrably_app/widget/custom_text-filed.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';

class Spalsh6 extends StatelessWidget {
  const Spalsh6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: KPrimaryColor,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Image(
                  image: AssetImage(
                'assets/images/Ellipse 3 splash5.png',
              )),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image(
                  image: AssetImage(
                'assets/images/Ellipse bottom right1.png',
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () async {
                              var time = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                                cancelText: 'CANCEL',
                                confirmText: 'DONE',
                              );
                            },
                            child: const Text(
                              '6',
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        const Text(
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
                        ElevatedButton(
                            onPressed: () async {
                              var time = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                                cancelText: 'CANCEL',
                                confirmText: 'DONE',
                              );
                            },
                            child: Text(
                              '6',
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        const Text(
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
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Image.asset('assets/images/man_clock.png'),
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        NextButton(
                          page: const DrawerPage(),
                          iconColor: Colors.white,
                          text: "!يلا بينا",
                          padding: 0,
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
          ],
        ));
  }
}
