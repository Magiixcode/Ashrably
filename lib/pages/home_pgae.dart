import 'package:ashrably_app/constens.dart';
import 'package:ashrably_app/pages/splash/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePgae extends StatelessWidget {
  const HomePgae({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      ZoomDrawer.of(context)!.toggle();
                      // if (ZoomDrawer.of(context)!.isOpen()) {
                      //   ZoomDrawer.of(context)!.close();
                      // } else {
                      //   ZoomDrawer.of(context)!.open();
                      // }
                    }),
                Text(
                  'الرئيسية ',
                  style: TextStyle(
                    fontFamily: 'Marhey',
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'التقدم ',
              style: TextStyle(
                fontFamily: 'Marhey',
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 320,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color(0xff4CC9F0),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 170,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color(0xff1911E9),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    '55%',
                    style: TextStyle(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'عاش يابطل ',
                  style: TextStyle(
                    fontFamily: 'Marhey',
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              alignment: Alignment.center,
              width: 240,
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xffB69EDC),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                'التنبية القادم : 10:15 دقيقة ',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              ' معدل الشرب في الساعة الواحدة  :500 ملي لتر  ',
              style: TextStyle(
                fontFamily: 'Marhey',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              ' خلي الميه جنبك دايما، وزوقها، واشربها قبل وأثناء وبعد الرياضة، وكل فواكه وخضار كتير، ومتنساش تسمع لجسمك ',
              style: TextStyle(
                fontFamily: 'Marhey',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
