import 'package:ashrably_app/constens.dart';
import 'package:ashrably_app/pages/home_pgae.dart';
import 'package:ashrably_app/widget/custom_text-filed.dart';
import 'package:flutter/material.dart';

class Spalsh6 extends StatelessWidget {
  const Spalsh6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KPrimaryColor,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          Image.asset('assets/images/man_clock.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'يلا بينا',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return HomePgae();
                        },
                      ),
                    );
                  })
            ],
          ),
        ]));
  }
}
