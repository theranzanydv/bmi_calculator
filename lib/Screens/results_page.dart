import 'package:bmi_calculator/Widgets/reusable_card.dart';
import 'package:flutter/material.dart';

import '../Widgets/bottom_button.dart';
import '../constants.dart';

// enum ResultTextColor{underweight, normal, overweight}

// ignore: must_be_immutable
class ResultsPage extends StatelessWidget {
  ResultsPage({
    Key? key,
    required this.bmiResult,
    required this.getInterpretation,
    required this.resultText,
  }) : super(key: key);

  String bmiResult;
  String resultText;
  String getInterpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Results',
                  style: kResultTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableContainer(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    if (resultText == "Normal")
                      Text(resultText.toUpperCase(), style: kBmiTypeTextStyle.copyWith(color: Colors.green)),
                    if (resultText == "Underweight" || resultText == "Overweight")
                      Text(resultText.toUpperCase(), style: kBmiTypeTextStyle.copyWith(color: Colors.red)),
                    Text(bmiResult, style: kBmiScoreTextStyle),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17.0),
                      child: Text(getInterpretation, style: kDescriptionTextStyle, textAlign: TextAlign.center),
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonLabel: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
