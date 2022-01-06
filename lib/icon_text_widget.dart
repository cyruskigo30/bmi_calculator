import 'package:flutter/material.dart';
import 'constants.dart';

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
          size: kImageIconSize,
          color: Colors.amber[50],
        ),
        const SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          iconLabel,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
