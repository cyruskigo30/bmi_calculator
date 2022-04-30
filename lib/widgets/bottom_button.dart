import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../utils/constants.dart';

class bottomButton extends StatelessWidget {
  const bottomButton({
    Key? key,
    required this.onTap,
    required this.buttonText,
  }) : super(key: key);
  final VoidCallback onTap;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: kAlertColor,
        ),
        margin: const EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
        padding: const EdgeInsets.only(
          bottom: 20,
        ),
        //value equal to full width of screen
        width: double.infinity,
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
