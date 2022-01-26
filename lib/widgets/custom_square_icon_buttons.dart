import 'package:flutter/material.dart';

class CustomSquareIconButton extends StatelessWidget {
  const CustomSquareIconButton({
    Key? key,
    required this.buttonIcon,
    required this.onButtonPressed,
    required this.customButtonColor,
  }) : super(key: key);
  final IconData buttonIcon;
  final  onButtonPressed;
  final Color customButtonColor;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onButtonPressed,
      child: Icon(buttonIcon),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      fillColor: customButtonColor,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}
