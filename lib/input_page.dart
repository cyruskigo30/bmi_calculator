import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
        backgroundColor: Colors.brown[900],
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
                    colors: Color(0xfff),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colors: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colors: Colors.blueAccent,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colors: Colors.deepOrangeAccent,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colors: Colors.tealAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  // create a constructor
  ReusableCard({Key? key, required this.colors}) : super(key: key);
  // class property color
  Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
