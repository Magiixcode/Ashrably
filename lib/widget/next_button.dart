import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  NextButton(
      {super.key,
      required this.icon,
      required this.padding,
      required this.styleText,
      required this.text,
      required this.iconColor,
      required this.page});
  double padding;
  String text;
  Color iconColor;
  TextStyle styleText;
  IconData icon;
  Widget page;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return page;
            },
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: padding),
        child: Row(
          children: [
            Text(
              text,
              style: styleText,
            ),
            Icon(
              icon,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
