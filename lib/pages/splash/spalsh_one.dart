import 'package:ashrably_app/bloc/store_cubit/store_cubit.dart';
import 'package:ashrably_app/model/water_model.dart';
import 'package:ashrably_app/pages/drawer/drawer_page.dart';
import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/splash/splash_tow.dart';
import 'package:flutter/material.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    super.initState();
    StoreCubit store = StoreCubit();

    Future.delayed(
      const Duration(seconds: 2),
      // ignore: use_build_context_synchronously

      () async {
        bool newUser = await store.readData();

        double liters = await store.getDoubleData(name: 'liters');
        double sizeCup = await store.getDoubleData(name: 'SizeCup');
        if (newUser == true) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const Splash2()));
        } else {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => DrawerPage(
                    model: WaterModel(
                      liters: liters,
                      sizeCup: sizeCup.toInt(),
                      timeStart: const TimeOfDay(hour: 6, minute: 30),
                    ),
                  )));
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KPrimaryColor,
      body: Center(
        child: Text(
          'اشربلي',
          style: TextStyle(
              fontSize: 100,
              fontFamily: 'Marhey',
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
