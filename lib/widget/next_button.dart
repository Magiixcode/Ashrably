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
    return Positioned(
      bottom: 50,
      right: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
        ),
      ),
    );
  }
}
