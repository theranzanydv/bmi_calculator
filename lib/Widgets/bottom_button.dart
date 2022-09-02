import 'package:flutter/material.dart';
import '../constants.dart';


class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonLabel;

  const BottomButton({Key? key, required this.onTap, required this.buttonLabel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text(buttonLabel, style: kLargeTextStyle),
        ),
      ),
    );
  }
}
