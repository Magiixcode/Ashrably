import 'package:flutter/material.dart';

class AskText extends StatelessWidget {
  AskText(
      {super.key,
      required this.horizontal,
      this.textAlign,
      required this.vertical,
      required this.text});
  String text;
  TextAlign? textAlign;
  double horizontal;
  double vertical;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: Text(
        textAlign: textAlign,
        text,
        style: const TextStyle(
          fontFamily: 'Marhey',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
