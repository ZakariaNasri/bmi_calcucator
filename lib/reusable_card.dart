import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color bgColor;
  final Widget childWidget;
  MyCard({required this.bgColor, required this.childWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(20),
      child: Center(
        child: childWidget,
      ),
    );
  }
}
