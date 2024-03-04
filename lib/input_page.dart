import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum GenderTypes { male, female }

int height = 150;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderTypes selectedGender = GenderTypes.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderTypes.male;
                      });
                    },
                    bgColor: selectedGender == GenderTypes.male
                        ? kActiveCardBG
                        : kInactiveCardBG,
                    childWidget: Gender(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderTypes.female;
                      });
                    },
                    bgColor: selectedGender == GenderTypes.female
                        ? kActiveCardBG
                        : kInactiveCardBG,
                    childWidget: Gender(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyCard(
              bgColor: kActiveCardBG,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kValueTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: kBottomBarColor,
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(
                        () {
                          height = newValue.round();
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    bgColor: kActiveCardBG,
                    childWidget: Text('hh'),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    bgColor: kActiveCardBG,
                    childWidget: Text('hh'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            color: kBottomBarColor,
          ),
        ],
      ),
    );
  }
}
