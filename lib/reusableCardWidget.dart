import 'package:flutter/material.dart';

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
