import 'package:ashrably_app/bloc/store_cubit/store_cubit.dart';
import 'package:ashrably_app/model/water_model.dart';
import 'package:ashrably_app/pages/home/app_bar.dart';
import 'package:ashrably_app/pages/home/next_alarm.dart';
import 'package:ashrably_app/pages/home/progress.dart';
import 'package:ashrably_app/pages/home/water_rate.dart';
import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/widget/custom_background_blur.dart';
import 'package:flutter/material.dart';

class HomePgae extends StatefulWidget {
  const HomePgae({super.key, required this.waterModel});
  final WaterModel waterModel;

  @override
  State<HomePgae> createState() => _HomePgaeState();
}

Future<double> getdataStore() async {
  StoreCubit store = StoreCubit();
  double liters = await store.getDoubleData(name: 'liters');

  return liters;
}

class _HomePgaeState extends State<HomePgae> {
  @override
  Widget build(BuildContext context) {
    double rate = (widget.waterModel.liters! / 6) * 1000;
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Stack(
        children: [
          const Positioned(
              top: -90,
              right: -50,
              child: CustomBackgroundColor(direction: Alignment.topRight)),
          const Positioned(
            bottom: 0,
            right: 0,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse 3 home page.png',
            )),
          ),
          // const Positioned(
          //   top: 0,
          //   right: 0,
          //   child: Image(
          //     image: AssetImage(
          //       'assets/images/Ellipse top right1.png',
          //     ),
          //   ),
          // ),

          Positioned(
              top: 80,
              left: MediaQuery.of(context).size.width / 12,
              right: MediaQuery.of(context).size.width / 12,
              child: const CustomAppBar()),
          Positioned(
            top: 170,
            left: MediaQuery.of(context).size.width / 3,
            right: MediaQuery.of(context).size.width / 3,
            child: const Text(
              'التقدم ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Marhey',
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 230,
            left: MediaQuery.of(context).size.width / 4,
            // right: MediaQuery.of(context).size.width / 15,
            child: CustomProgress(
              height: 110,
              progress: (widget.waterModel.sizeCup!.toDouble() / rate) * 100,
              width: 310,
            ),
          ),
          const Positioned(
            top: 350,
            right: 60,
            child: Text(
              'عاش يابطل ',
              style: TextStyle(
                fontFamily: 'Marhey',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 350,
            left: 60,
            child: Text(
              "عدد الساعات المحددة : 6 ",
              style: TextStyle(
                fontFamily: 'Marhey',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              left: MediaQuery.of(context).size.width / 8,
              right: MediaQuery.of(context).size.width / 8,
              bottom: 300,
              child: const NextAlarm()),
          Positioned(
              bottom: 220,
              left: MediaQuery.of(context).size.width / 8,
              right: MediaQuery.of(context).size.width / 8,
              child: WaterRate(
                rate: rate,
              )),
          Positioned(
            bottom: 150,
            left: MediaQuery.of(context).size.width / 8,
            right: MediaQuery.of(context).size.width / 8,
            child: const Text(
              ' خلي الميه جنبك دايما، وزوقها، واشربها قبل وأثناء وبعد الرياضة، وكل فواكه وخضار كتير، ومتنساش تسمع لجسمك ',
              style: TextStyle(
                fontFamily: 'Marhey',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
