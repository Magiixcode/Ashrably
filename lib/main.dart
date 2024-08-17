import 'package:ashrably_app/pages/splash/spalsh_one.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('user', true);
  bool? user = prefs.getBool('user');
  runApp(AshrablyApp(user: user!));
}

class AshrablyApp extends StatelessWidget {
  const AshrablyApp({super.key, required this.user});
  final bool user;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash1(user: user),
    );
  }
}
