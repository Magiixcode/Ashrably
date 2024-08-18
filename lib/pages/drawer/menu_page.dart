import 'package:ashrably_app/pages/drawer/info_page.dart';
import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/settings/setting_page.dart';
import 'package:ashrably_app/utils/lunch_url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:share_plus/share_plus.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  void _openIconButtonPtressed() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const InfoPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Stack(
        children: [
          const Positioned(
            bottom: 0,
            left: 0,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse 3 bottom menue.png',
            )),
          ),
          Padding(
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
                  onTap: () {
                    launchURL('mailto://magixcodesoftware@gmail.com');
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.info,
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
                  onTap: _openIconButtonPtressed,
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
                  onTap: () {
                    Share.share(
                        'جرب تطبيق اشربلي لمتابعه كمية المياه اللي بتشربها في اليوم');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
