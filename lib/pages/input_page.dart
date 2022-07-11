import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../functions/bmi_calculator.dart';
import 'results_page.dart';
import '../theme/colors.dart';
import '../utils/constants.dart';
import '../widgets/custom_square_icon_buttons.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/reusable_card_widget.dart';
import '../widgets/bottom_button.dart';

///create an enum to hold the gender types///
enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  static String routeName = '/input_page';

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  ///create a variable to hold the values of the enum///
  GenderType? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text(
          'BMI Calculator'.toUpperCase(),
          style: kTitleTextStyle.copyWith(
            color: kSupportColor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },

                    ///Using ternary operator - allow assignment of variable to a condition something impossible in if statements
                    ///Because the selectedGender has no default value, so below statement evaluates to false hence applying the secondary color as it's the choice when  condition is false///
                    reusableCardColor: selectedGender == GenderType.male
                        ? kAlertColor
                        : kSecondaryColor,
                    reusableCardChild: const ReusableIconTextWidget(
                      genderIcon: Icons.male,
                      iconLabel: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },

                    ///Using ternary operator - allow assignment of variable to a condition something impossible in if statements
                    ///Because the selectedGender has no default value, so below statement evaluates to false hence applying the secondary color as it's the choice when  condition is false///
                    reusableCardColor: selectedGender == GenderType.female
                        ? kAlertColor
                        : kSecondaryColor,
                    reusableCardChild: const ReusableIconTextWidget(
                      genderIcon: Icons.female,
                      iconLabel: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              reusableCardColor: kSecondaryColor,
              onPress: () {},
              reusableCardChild: Column(
                ///Place the children (Row) in the middle of the column
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    ///Place all the children  in the middle of the Row
                    mainAxisAlignment: MainAxisAlignment.center,

                    ///Place the children to be under the same baseline in the bottom
                    crossAxisAlignment: CrossAxisAlignment.baseline,

                    /// THis is a dependency of the above crossAxis alignment in order to secure the baseline
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyling,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 25),
                      thumbColor: kSupportColor,
                      activeTrackColor: kAlertColor,
                      inactiveTrackColor: kLightGreyColor,
                      overlayColor: kAlertColor.withOpacity(.20),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      // label: '$height',
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    reusableCardColor: kSecondaryColor,
                    reusableCardChild: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "WEIGHT",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberStyling,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomSquareIconButton(
                                buttonIcon: FontAwesomeIcons.plus,
                                customButtonColor: kAlertColor,
                                onButtonPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              const SizedBox(width: 10),
                              CustomSquareIconButton(
                                buttonIcon: FontAwesomeIcons.minus,
                                customButtonColor: kAlertColor,
                                onButtonPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    reusableCardColor: kSecondaryColor,
                    reusableCardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyling,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomSquareIconButton(
                              buttonIcon: FontAwesomeIcons.plus,
                              customButtonColor: kAlertColor,
                              onButtonPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            const SizedBox(width: 10),
                            CustomSquareIconButton(
                              buttonIcon: FontAwesomeIcons.minus,
                              customButtonColor: kAlertColor,
                              onButtonPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonText: 'CALCULATE',
            onTap: () {
              BmiCalculator calculate = BmiCalculator(
                height,
                weight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BmiResultsPage(
                    bmiResult: calculate.calculateBmi(),
                    resultText: calculate.getResults(),
                    resultInterpretation: calculate.interpretResults(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
