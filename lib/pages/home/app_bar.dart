import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
              // if (ZoomDrawer.of(context)!.isOpen()) {
              //   ZoomDrawer.of(context)!.close();
              // } else {
              //   ZoomDrawer.of(context)!.open();
              // }
            }),
        const Text(
          'الرئيسية ',
          style: TextStyle(
            fontFamily: 'Marhey',
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
