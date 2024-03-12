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
      body: Column(
        children: [
          Text(
            'Result',
            style: kValueTextStyle,
          ),
          MyCard(
            bgColor: kActiveCardBG,
            childWidget: Column(),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultsPage();
              }));
            },
            child: Container(
              height: 80,
              width: double.infinity,
              color: kBottomBarColor,
              child: Center(
                child: Text(
                  'Calculate',
                  style: kResultButtonStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
