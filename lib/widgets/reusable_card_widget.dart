import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // create a constructor
  const ReusableCard({

    required this.colors,
    required this.cardChild,
    this.onPress,
  });
  // class property color
  final Color colors;
  final Widget cardChild;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
