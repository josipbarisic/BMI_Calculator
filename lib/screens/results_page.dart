import 'package:bmi_calc_app/components/bottom_button.dart';
import 'package:bmi_calc_app/components/reusable_card.dart';
import 'package:bmi_calc_app/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResults;
  final String resultText;
  final String interpretation;

  ResultsPage(
      {@required this.bmiResults,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    print('$bmiResults $resultText $interpretation');
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResults,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
