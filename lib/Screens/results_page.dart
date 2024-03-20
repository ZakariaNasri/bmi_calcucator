import 'package:bmi_calcucator/Screens/input_page.dart';
import 'package:flutter/material.dart';
import '../Components/reusable_card.dart';
import '../Components/constants.dart';
import '../Components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.textResult,
      required this.bmi,
      required this.interpretation});

  final String textResult;
  final String bmi;
  final String interpretation;
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
                    textResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kFinalResultTxtStl,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                    ),
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
