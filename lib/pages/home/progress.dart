import 'package:flutter/material.dart';

class CustomProgress extends StatelessWidget {
  const CustomProgress({
    super.key,
    required this.width,
    required this.height,
    required this.progress,
  });
  final double width;
  final double height;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: const Color(0xff1911E9),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: (width * progress) / 100,
            height: height,
            decoration: BoxDecoration(
              color: const Color(0xff4CC9F0),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Positioned(
            top: height / 3,
            left: width / 3,
            child: Text(
              ' ${((width * progress)) / width}%',
              style: const TextStyle(
                fontFamily: 'Marhey',
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
