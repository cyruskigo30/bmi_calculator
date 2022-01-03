import 'package:flutter/material.dart';

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
          size: 30,
          color: Colors.amber[50],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          iconLabel,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
