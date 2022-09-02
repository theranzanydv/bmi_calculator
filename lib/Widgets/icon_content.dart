import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key,
    required this.genderIcon,
    required this.label,
  }) : super(key: key);

  final String label;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: kIconSize,
          color: kIconColor,
        ),
        const SizedBox(height: 14),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
