import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/icon_text_widget.dart';
import 'package:bmi/reusable_card_widget.dart';
import 'constants.dart';

enum GenderType {
  male,
  female,
  idle,
}
GenderType selectedGender = GenderType.idle;
int height = 180;
int weight = 60;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kCardColor,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 18.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            // color: Colors.white,
          ),
        ),
      ),
      body: Column(
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
                    colors: selectedGender == GenderType.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: const ReusableIconTextWidget(
                      iconImager: Icons.male,
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
                    colors: selectedGender == GenderType.female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: const ReusableIconTextWidget(
                      iconImager: Icons.female,
                      iconLabel: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              colors: kCardColor,
              cardChild: Column(
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
                        style: kNumberStyling,
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 10),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 15),
                      thumbColor: Colors.amber,
                      activeTrackColor: Colors.amber.shade900,
                      inactiveTrackColor: Colors.blueGrey[100],
                      overlayColor: Colors.amber.withOpacity(.20),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,

                      // activeColor: Colors.white,
                      // inactiveColor: Colors.blueGrey.shade100,
                      // value passed by slider
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
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
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    colors: kCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
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
                            RoundIconButton(
                              buttonIcon: FontAwesomeIcons.plus,
                              customButtonColor: Colors.amber,
                              onButtonPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            const SizedBox(width: 10),
                            RoundIconButton(
                              buttonIcon: FontAwesomeIcons.minus,
                              customButtonColor: Colors.amber.shade900,
                              onButtonPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    colors: kCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(FontAwesomeIcons.male),
                        Text(
                          "MALE",
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kCardColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity, //value equal to full width of screen
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.buttonIcon,
    required this.onButtonPressed,
    required this.customButtonColor,
  }) : super(key: key);
  final IconData buttonIcon;
  final onButtonPressed;
  final Color customButtonColor;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onButtonPressed,
      child: Icon(buttonIcon),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      fillColor: customButtonColor,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}
