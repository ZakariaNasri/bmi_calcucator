import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color bgColor;
  final Widget childWidget;
  final onPress;

  MyCard({required this.bgColor, required this.childWidget, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(20),
        child: Center(
          child: childWidget,
        ),
      ),
    );
  }
}
