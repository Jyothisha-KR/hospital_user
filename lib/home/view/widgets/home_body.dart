import 'package:flutter/material.dart';

class HomeBodyWidget extends StatelessWidget {
  HomeBodyWidget({super.key, this.text, this.image});

  String? text;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
    
  }
}
