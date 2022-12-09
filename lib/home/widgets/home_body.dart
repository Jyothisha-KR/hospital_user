import 'package:flutter/material.dart';

class HomeBodyWidget extends StatelessWidget {
  HomeBodyWidget({super.key, this.text, this.image, this.height, this.width, this.onTap});

  String? text;
  String? image;
  double? height;
  double? width;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap:onTap ,
      child: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Image.asset(image!),
            Text(
              text!,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
