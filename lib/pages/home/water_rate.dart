import 'package:flutter/material.dart';

class WaterRate extends StatelessWidget {
  const WaterRate({super.key, required this.rate});
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Text(
      ' معدل الشرب في الساعة الواحدة  :$rate ملي لتر  ',
      textDirection: TextDirection.rtl,
      style: const TextStyle(
        fontFamily: 'Marhey',
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
