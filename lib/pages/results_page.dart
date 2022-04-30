import 'package:flutter/material.dart';

import 'package:bmi/utils/constants.dart';
import 'package:bmi/widgets/reusable_card_widget.dart';

import '../theme/colors.dart';
import '../widgets/bottom_button.dart';

class BmiResultsPage extends StatelessWidget {
  const BmiResultsPage({
    Key? key,
    required this.bmiResult,
    required this.resultText,
    required this.resultInterpretation,
  }) : super(key: key);
  static String routeName = '/results_page';
  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text(
          'BMI Results',
          style: kTitleTextStyle.copyWith(
            color: kSupportColor,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(
              left: 26,
              top: 20,
            ),
            child: Text(
              'Your Results',
              style: kTitleTextStyle.copyWith(
                color: kWhiteColor,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: () {},
              reusableCardColor: kSecondaryColor,
              reusableCardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    resultInterpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: bottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonText: 'RE-CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}
