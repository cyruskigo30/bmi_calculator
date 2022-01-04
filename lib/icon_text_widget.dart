import 'package:flutter/material.dart';

const double imageiconSize = 30;
const double sizedBoxHeight = 20;
const double labelTextFontSize = 18;

class ReusableIconTextWidget extends StatelessWidget {
  const ReusableIconTextWidget({
    Key? key,
    required this.iconImager,
    required this.iconLabel,
  }) : super(key: key);
  final IconData iconImager;
  final String iconLabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconImager,
          size: imageiconSize,
          color: Colors.amber[50],
        ),
        const SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          iconLabel,
          style: const TextStyle(
            fontSize: labelTextFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}