import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      child: TextField(
        keyboardType: const TextInputType.numberWithOptions(),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
