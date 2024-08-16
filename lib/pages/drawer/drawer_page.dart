import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/home/home_pgae.dart';
import 'package:ashrably_app/pages/drawer/menu_page.dart';
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
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image(
                image: AssetImage(
              'assets/images/Ellipse 4top menue.png',
            )),
          ),
          ZoomDrawer(
            menuScreen: const MenuPage(),
            mainScreen: const HomePgae(),
            boxShadow: const [
              BoxShadow(color: Colors.white, offset: Offset(-5, -3)),
              BoxShadow(color: Colors.white, offset: Offset(0, 5))
            ],
            style: DrawerStyle.defaultStyle,
            controller: zoomDrawerController,
            angle: 0,
            mainScreenScale: 0.23,
            clipMainScreen: true,
          ),
        ],
      ),
    );
  }
}
