import 'package:ashrably_app/widget/custom_text-filed.dart';
import 'package:flutter/material.dart';

class Spalsh6 extends StatelessWidget {
  const Spalsh6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff480CA8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            'ايه الوقت اللي عايز تشرب فيه؟',
            style: TextStyle(
              fontFamily: 'Marhey',
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFiled(),
              SizedBox(
                width: 20,
              ),
              Text(
                textAlign: TextAlign.center,
                'الي',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              CustomTextFiled(),
              SizedBox(
                width: 20,
              ),
              Text(
                textAlign: TextAlign.center,
                'من',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Positioned(
            right: 50,
            child: Image.asset('assets/images/man_clock.png'),
          )
        ],
      ),
    );
  }
}
