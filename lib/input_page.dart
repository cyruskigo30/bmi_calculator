import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/icon_text_widget.dart';
import 'package:bmi/reusable_card_widget.dart';

const bottomContanierHeight = 80.0;
Color cardColor = Colors.brown.shade700;
Color activeCardColor = Colors.brown.shade600;
Color inActiveCardColor = Colors.brown.shade700;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;
  void updateCardColor(gender) {
    if (gender == 1) {
      //male card pressed
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
      }
    }

    // female card pressed
    if (gender == 2) {
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      } else {
        femaleCardColor = inActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cardColor,
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
                  child: GestureDetector(
                    child: ReusableCard(
                      colors: maleCardColor,
                      cardChild: const ReusableIconTextWidget(
                        iconImager: LineIcons.male,
                        iconLabel: 'MALE',
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        updateCardColor(1);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      colors: femaleCardColor,
                      cardChild: const ReusableIconTextWidget(
                        iconImager: LineIcons.female,
                        iconLabel: 'FEMALE',
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        updateCardColor(2);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colors: cardColor,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  FaIcon(
                    Icons.male_sharp,
                    size: 50,
                  ),
                  Text("Male"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colors: cardColor,
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
                    colors: cardColor,
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
            color: cardColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity, //value equal to full width of screen
            height: bottomContanierHeight,
          ),
        ],
      ),
    );
  }
}
