import 'package:ashrably_app/pages/spalsh_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AshrablyApp());
}

class AshrablyApp extends StatelessWidget {
  const AshrablyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
