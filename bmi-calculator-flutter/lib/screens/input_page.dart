import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';

import 'results_page.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bottom_button.dart';
import '../constants.dart';
import '../components/icon_button.dart';

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
  int heightSelected = 180;
  int weightSelected = 60;
  int ageSelected = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: genderSelected == Gender.male
                        ? kColorActive
                        : kColorInactive,
                    cardChild: IconButtonWidget(
                      icon: FontAwesomeIcons.mars,
                      textButton: 'MALE',
                    ),
                    onPress: () {
                      setState(() {
                        genderSelected = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: genderSelected == Gender.female
                        ? kColorActive
                        : kColorInactive,
                    cardChild: IconButtonWidget(
                      icon: FontAwesomeIcons.venus,
                      textButton: 'FEMALE',
                    ),
                    onPress: () {
                      setState(() {
                        genderSelected = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: kColorActive,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kTextStyleButton,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          heightSelected.toString(),
                          style: kTextStyleSlider,
                        ),
                        Text(
                          'cm',
                          style: kTextStyleButton,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: kColorInactiveHigh,
                          thumbColor: kColorActiveHigh,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 20.0)),
                      child: Slider(
                        value: heightSelected.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            heightSelected = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kColorActive,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kTextStyleButton,
                          ),
                          Text(
                            weightSelected.toString(),
                            style: kTextStyleSlider,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressAction: () {
                                  setState(() {
                                    weightSelected++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressAction: () {
                                  setState(() {
                                    weightSelected--;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kColorActive,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kTextStyleButton,
                          ),
                          Text(
                            ageSelected.toString(),
                            style: kTextStyleSlider,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressAction: () {
                                  setState(() {
                                    ageSelected++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressAction: () {
                                  setState(() {
                                    ageSelected--;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomButton(
              text: 'CALCULATE',
              onTapAction: () {
                CalculatorBrain calc = CalculatorBrain(
                    height: heightSelected, weight: weightSelected);
                calc.calculateBMI();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(
                        bmiResult: calc.getBmi(),
                        resultText: calc.getResult(),
                        interpretation: calc.getInterpretation(),
                      ),
                    ));
              },
            ),
          ],
        ));
  }
}
