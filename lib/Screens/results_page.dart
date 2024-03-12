import 'package:bmi_calcucator/Screens/input_page.dart';
import 'package:flutter/material.dart';
import '../Components/reusable_card.dart';
import '../Components/constants.dart';
import '../Components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Text(
                'Result',
                style: kValueTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: MyCard(
              bgColor: kActiveCardBG,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'OVERWHEIGHT',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '29.6',
                    style: kValueTextStyle,
                  ),
                  Text(
                    'try-lets take a new step by adding a new program to your daily meals , lest goo',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
