import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ReusableIconTextWidget extends StatelessWidget {
  const ReusableIconTextWidget({
    Key? key,
    required this.genderIcon,
    required this.iconLabel,
  }) : super(key: key);
  final IconData genderIcon;
  final String iconLabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
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
