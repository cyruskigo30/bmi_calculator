import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // create a constructor
  const ReusableCard({
    required this.reusableCardColor,
    required this.reusableCardChild,
    required this.onPress,
  });
  // class property color
  final Color reusableCardColor;
  final Widget reusableCardChild;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: reusableCardChild,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: reusableCardColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onTap: onPress,
    );
  }
}
