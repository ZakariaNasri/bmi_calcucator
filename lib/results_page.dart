import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyCard(
      bgColor: Colors.white,
      childWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Result')],
      ),
    );
  }
}
