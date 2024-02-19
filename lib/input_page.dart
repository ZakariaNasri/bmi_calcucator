import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

const Color BottomBarColor = Color(0xFFEB1555);
const Color CardBG = Color(0xFF1D1E39);
int Height = 150;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    bgColor: CardBG,
                    childWidget: Gender(
                      icon: FontAwesomeIcons.mars,
                      text: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    bgColor: CardBG,
                    childWidget: Gender(
                      icon: FontAwesomeIcons.venus,
                      text: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyCard(
              bgColor: CardBG,
              childWidget: Column(
                children: [
                  Text(
                    '${Height}',
                    style: TextStyle(fontSize: 80),
                  ),
                  Slider(
                    value: .5,
                    activeColor: BottomBarColor,
                    inactiveColor: Color(0xFF0A0E21),
                    onChanged: (double newValue) {
                      setState(
                        () {
                          Height = newValue.round();
                        },
                      );
                    },
                  )
                  // Slider(value: value, onChanged: onClick)
                ],
              ),
            ),
          ),
          // Expanded(
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: MyCard(bgColor: CardBG),
          //       ),
          //       Expanded(
          //         child: MyCard(bgColor: CardBG),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            height: 80,
            width: double.infinity,
            color: BottomBarColor,
          ),
        ],
      ),
    );
  }
}
