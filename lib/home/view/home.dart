import 'package:flutter/material.dart';

import 'package:hospital_user/home/widgets/home_body.dart';
import 'package:hospital_user/login/login.dart';
import 'package:hospital_user/patient/patient.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Login As',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 500),
              child: Row(
                children: [
                  HomeBodyWidget(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    image: 'assets/images/doc.webp',
                    text: 'Doctor',
                    height: 150,
                    width: 120,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  HomeBodyWidget(
                    height: 150,
                    width: 120,
                    text: 'patient',
                    image: 'assets/images/p.webp',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  HomeBodyWidget(
                    height: 150,
                    width: 120,
                    image: 'assets/images/rec.png',
                    onTap: () {},
                    text: 'Receptionist',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
