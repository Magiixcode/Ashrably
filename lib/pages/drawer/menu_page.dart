import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/settings/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text(
                'الصفحة الرئيسية ',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                ZoomDrawer.of(context)!.toggle();
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: const Text(
                'الاعدادات',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const SettingPage();
                }));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.call,
                color: Colors.white,
              ),
              title: const Text(
                'تواصل معانا',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.group,
                color: Colors.white,
              ),
              title: const Text(
                'عنا',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.share,
                color: Colors.white,
              ),
              title: const Text(
                'مشاركة التطبيق',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
