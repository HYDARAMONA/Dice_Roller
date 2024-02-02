import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.screenText, {super.key});
  final String screenText;
  @override
  Widget build(BuildContext context) {
    return Text(
      screenText,
      style: const TextStyle(color: Colors.white, fontSize: 21),
    );
  }
}
