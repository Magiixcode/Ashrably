import 'package:ashrably_app/pages/drawer/drawer_page.dart';
import 'package:ashrably_app/utils/constens.dart';
import 'package:ashrably_app/pages/splash/splash_tow.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key, required this.user});
  final bool user;
  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      // ignore: use_build_context_synchronously
      () {
        if (widget.user == true) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const Splash2()));
        } else {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const DrawerPage()));
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
