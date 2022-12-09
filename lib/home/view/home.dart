import 'package:flutter/material.dart';

import 'package:hospital_user/home/view/widgets/home_body.dart';
import 'package:hospital_user/login/login.dart';
import 'package:hospital_user/patient/patient.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 350, left: 10, right: 10),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 30,
              mainAxisSpacing: 50,
              childAspectRatio: 2 / 3,
            ),
            children: [
              InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                }),
                child: InkWell(
                  child: HomeBodyWidget(
                    image: 'assets/images/doc.webp',
                    text: 'Doctor',
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                child: HomeBodyWidget(
                  image: 'assets/images/p.webp',
                  text: 'Patient',
                ),
              ),
              InkWell(
                child: HomeBodyWidget(
                  image: 'assets/images/rec.png',
                  text: 'Receptionist',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
