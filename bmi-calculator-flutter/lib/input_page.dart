import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_button.dart';

const double containerButtonHeight = 80.0;
const Color colorActive = Color(0xFF1D1E33);
const Color colorInactive = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderSelected = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: genderSelected == Gender.male
                          ? colorActive
                          : colorInactive,
                      cardChild: IconButtonWidget(
                        icon: FontAwesomeIcons.mars,
                        textButton: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderSelected = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: genderSelected == Gender.female
                          ? colorActive
                          : colorInactive,
                      cardChild: IconButtonWidget(
                        icon: FontAwesomeIcons.venus,
                        textButton: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(colour: colorActive),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(colour: colorActive),
                  ),
                  Expanded(
                    child: ReusableCard(colour: colorActive),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              height: containerButtonHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ],
        ));
  }
}
