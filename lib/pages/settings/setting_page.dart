import 'package:ashrably_app/bloc/store_cubit/store_cubit.dart';
import 'package:ashrably_app/model/water_model.dart';
import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/widget/footer.dart';
import 'package:ashrably_app/widget/setting_app_bar.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> items = [1, 2, 3, 4, 5, 6];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: KPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 24,
          left: 50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SettingAppBar(),
            const SizedBox(
              height: 40,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: const Text(
                    textAlign: TextAlign.right,
                    'السماح بالتنبيهات',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text(
                    textAlign: TextAlign.right,
                    'مفعل',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    textAlign: TextAlign.right,
                    'تغيروقت التنبية',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text(
                    textAlign: TextAlign.right,
                    'من الساعه  6 الي 12',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  onTap: () async {
                    var time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      cancelText: 'CANCEL',
                      confirmText: 'DONE',
                    );
                  },
                ),
                ListTile(
                  title: const Text(
                    textAlign: TextAlign.right,
                    'تغير الكمية',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text(
                    textAlign: TextAlign.right,
                    '5 لتر في اليوم',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {
                    StoreCubit store = StoreCubit();
                    store.saveDoubleData(value: 5, name: 'liters');
                  },
                ),
                ListTile(
                  title: const Text(
                    textAlign: TextAlign.right,
                    'كمية الشرب في المرة الواحدة',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text(
                    textAlign: TextAlign.right,
                    '500 ملي لتر',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {
                    StoreCubit store = StoreCubit();
                    store.saveDoubleData(value: 250, name: 'SizeCup');
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
