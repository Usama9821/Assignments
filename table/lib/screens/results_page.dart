import 'package:flutter/material.dart';
import 'package:table/constants.dart';
import 'package:table/components/reusable_card.dart';
import 'package:table/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.bmiResult,
  }); //required this.resultText; required this.interpretation,

  var bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Generator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Generated Table',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // ListTile(
                  //   title: Text(""),
                  // ),
                  // Text(
                  //   resultText.toUpperCase(),
                  //   style: kResultTextStyle,
                  // ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  // Text(
                  //   interpretation,
                  //   textAlign: TextAlign.center,
                  //   style: kBodyTextStyle,
                  // ),
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
