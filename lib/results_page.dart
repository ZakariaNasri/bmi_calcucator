import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi Calculator'),
      ),
      body: MyCard(
        bgColor: kActiveCardBG,
        childWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Result')],
        ),
      ),
    );
  }
}
