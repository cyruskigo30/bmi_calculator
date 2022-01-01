import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    cardChild: ReusableIconTextWidget(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colors: containerColor,
                    cardChild: ReusableIconTextWidget(),
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

class ReusableIconTextWidget extends StatelessWidget {
  const ReusableIconTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          LineIcons.male,
          size: 50,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "MALE",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  // create a constructor
  const ReusableCard({Key? key, required this.colors, required this.cardChild})
      : super(key: key);
  // class property color
  final Color colors;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
