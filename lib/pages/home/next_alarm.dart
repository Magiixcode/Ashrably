import 'package:flutter/material.dart';

class NextAlarm extends StatelessWidget {
  const NextAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 240,
      height: 55,
      decoration: BoxDecoration(
        color: const Color(0xffB69EDC),
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Text(
        'التنبية القادم : 10:15 دقيقة ',
        style: TextStyle(
          fontFamily: 'Marhey',
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
