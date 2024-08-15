import 'package:ashrably_app/constens.dart';
import 'package:ashrably_app/pages/home_pgae.dart';
import 'package:ashrably_app/pages/splash/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  // ignore: non_constant_identifier_names
  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: ZoomDrawer(
        menuScreen: MenuPage(),
        mainScreen: HomePgae(),
        boxShadow: [
          BoxShadow(color: Colors.white, offset: Offset(-5, -3)),
          BoxShadow(color: Colors.white, offset: Offset(0, 5))
        ],
        style: DrawerStyle.defaultStyle,
        controller: zoomDrawerController,
        angle: 0,
        mainScreenScale: 0.15,
        clipMainScreen: true,
      ),
    );
  }
}
