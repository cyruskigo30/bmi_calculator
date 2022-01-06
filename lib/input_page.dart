import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/icon_text_widget.dart';
import 'package:bmi/reusable_card_widget.dart';
import 'constants.dart';

enum GenderType {
  male,
  female,
  idle,
}
GenderType selectedGender = GenderType.idle;

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
                      iconImager: LineIcons.male,
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
                      iconImager: LineIcons.female,
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
                children: const [
                  Text(
                    'DATA',
                    style: kLabelTextStyle,
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
                    colors: kCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(LineIcons.male),
                        Text("Male"),
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
                      children: const [
                        Icon(LineIcons.male),
                        Text("Male"),
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
