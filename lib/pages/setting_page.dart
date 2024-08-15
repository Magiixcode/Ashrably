import 'package:ashrably_app/constens.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: ListView(
          children: [
            ListTile(
              title: const Text(
                textAlign: TextAlign.right,
                'السماح بالتنبيهات',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                textAlign: TextAlign.right,
                'مفعل',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                textAlign: TextAlign.right,
                'تغيروقت التنبية',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                textAlign: TextAlign.right,
                'من الساعه  6 الي 12',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                textAlign: TextAlign.right,
                'تغير الكمية',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                textAlign: TextAlign.right,
                '5 لتر في اليوم',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                textAlign: TextAlign.right,
                'كمية الشرب في المرة الواحدة',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                textAlign: TextAlign.right,
                '500 ملي لتر',
                style: TextStyle(
                  fontFamily: 'Marhey',
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
