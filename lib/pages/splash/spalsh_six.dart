import 'package:ashrably_app/bloc/store_cubit/store_cubit.dart';
import 'package:ashrably_app/model/water_model.dart';
import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/drawer/drawer_page.dart';
import 'package:ashrably_app/widget/ask_text.dart';
import 'package:ashrably_app/widget/custom_text-filed.dart';
import 'package:ashrably_app/widget/next_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Spalsh6 extends StatefulWidget {
  const Spalsh6({super.key, required this.liters, required this.sizeCup});
  final double liters;
  final double sizeCup;

  @override
  State<Spalsh6> createState() => _Spalsh6State();
}

class _Spalsh6State extends State<Spalsh6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: KPrimaryColor,
        body: Stack(
          children: [
            const Positioned(
              top: 0,
              right: 0,
              child: Image(
                  image: AssetImage(
                'assets/images/Ellipse 3 splash5.png',
              )),
            ),
            Positioned(
              bottom: -80,
              left: -140,
              child: Image.asset('assets/images/man_clock.png'),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 3,
              left: MediaQuery.of(context).size.width / 15,
              right: MediaQuery.of(context).size.width / 15,
              child: AskText(
                textAlign: TextAlign.center,
                horizontal: 0,
                vertical: 5,
                text: 'ايه الوقت اللي عايز تشرب فيه؟',
              ),
            ),
            const Positioned(
              bottom: 0,
              right: 0,
              child: Image(
                  image: AssetImage(
                'assets/images/Ellipse bottom right1.png',
              )),
            ),
            Positioned(
              bottom: 50,
              right: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () async {
                    StoreCubit store = StoreCubit();
                    store.storeData(user: false);
                    bool use = await store.readData();
                    store.saveData(
                        model: WaterModel(
                            liters: widget.liters,
                            sizeCup: widget.sizeCup.toInt(),
                            timeStart: TimeOfDay.now()));
                    print(use);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return DrawerPage(
                            model: WaterModel(
                              liters: widget.liters,
                              sizeCup: widget.sizeCup.toInt(),
                              timeStart: const TimeOfDay(hour: 6, minute: 30),
                            ),
                          );
                        },
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Row(
                      children: [
                        Text(
                          "!يلا بينا",
                          style: TextStyle(),
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  @override
  Widget build(BuildContext context) {
    int hour = 0;
    int min = 0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                var time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  cancelText: 'الغاء',
                  confirmText: 'تمام',
                );

                setState(() {
                  hour = time!.hour;
                  min = time.minute;
                });
                print(hour);
              },
              child: Text(
                "$hour : $min",
                style: const TextStyle(color: Colors.black),
              )),
          const SizedBox(
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
          const SizedBox(
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
              child: const Text(
                '6',
                style: TextStyle(color: Colors.black),
              )),
          const SizedBox(
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
    );
  }
}

//  Positioned(
//                 top: MediaQuery.of(context).size.height / 2.5,
//                 left: MediaQuery.of(context).size.width / 15,
//                 right: MediaQuery.of(context).size.width / 15,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 20.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                           onPressed: () async {
//                             var time = await showTimePicker(
//                               context: context,
//                               initialTime: TimeOfDay.now(),
//                               cancelText: 'الغاء',
//                               confirmText: 'تمام',
//                             );

//                             setState(() {
//                               hour = time!.hour;
//                               min = time.minute;
//                             });
//                             print(hour);
//                           },
//                           child: Text(
//                             "$hour : $min",
//                             style: const TextStyle(color: Colors.black),
//                           )),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       const Text(
//                         textAlign: TextAlign.center,
//                         'الي',
//                         style: TextStyle(
//                           fontFamily: 'Marhey',
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       ElevatedButton(
//                           onPressed: () async {
//                             var time = await showTimePicker(
//                               context: context,
//                               initialTime: TimeOfDay.now(),
//                               cancelText: 'CANCEL',
//                               confirmText: 'DONE',
//                             );
//                           },
//                           child: const Text(
//                             '6',
//                             style: TextStyle(color: Colors.black),
//                           )),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       const Text(
//                         textAlign: TextAlign.center,
//                         'من',
//                         style: TextStyle(
//                           fontFamily: 'Marhey',
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 )),
//             Positioned(
//                 bottom: 50,
//                 child: ElevatedButton(
//                     onPressed: () async {
//                       final SharedPreferences prefs =
//                           await SharedPreferences.getInstance();
//                       await prefs.setBool('user', false);
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (_) => const DrawerPage()));
//                     },
//                     child: const Text("!يلا بينا"))),