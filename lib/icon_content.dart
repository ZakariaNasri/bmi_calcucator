import 'package:flutter/material.dart';
import 'constants.dart';

class Gender extends StatelessWidget {
  final IconData icon;
  final String text;
  Gender({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
