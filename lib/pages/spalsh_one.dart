import 'package:ashrably_app/constens.dart';
import 'package:ashrably_app/pages/splash_tow.dart';
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
    Future.delayed(
      const Duration(seconds: 2),
      // ignore: use_build_context_synchronously
      () => Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const Splash2())),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff480CA8),
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
