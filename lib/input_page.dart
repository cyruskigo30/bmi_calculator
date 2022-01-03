import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/iconTextWidget.dart';
import 'package:bmi/reusableCardWidget.dart';

const bottomContanierHeight = 80.0;
const Color containerColor = Colors.brown;

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
        backgroundColor: containerColor,
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
              children: const [
                Expanded(
                  child: ReusableCard(
                    colors: containerColor,
                    cardChild: ReusableIconTextWidget(
                      iconImager: LineIcons.male,
                      iconLabel: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colors: containerColor,
                    cardChild: ReusableIconTextWidget(
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
              colors: containerColor,
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
                    colors: containerColor,
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
                    colors: containerColor,
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
            color: containerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity, //value equal to full width of screen
            height: bottomContanierHeight,
          ),
        ],
      ),
    );
  }
}
