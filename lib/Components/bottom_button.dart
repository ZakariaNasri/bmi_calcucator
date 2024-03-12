import 'package:flutter/material.dart';
import 'constants.dart';
import '../Screens/results_page.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.text, required this.onTap});
  final String text;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: double.infinity,
        color: kBottomBarColor,
        child: Center(
          child: Text(
            text,
            style: kResultButtonStyle,
          ),
        ),
      ),
    );
  }
}
