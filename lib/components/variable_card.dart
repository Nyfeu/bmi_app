// ignore_for_file: use_key_in_widget_constructors

import 'package:bmi_app/components/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class VariableCardContent extends StatelessWidget {
  const VariableCardContent(
      {required this.text,
      required this.variable,
      required this.onPress1,
      required this.onPress2});

  final String text;
  final int variable;
  final Function() onPress1;
  final Function() onPress2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          style: kTextStyle,
        ),
        Text(
          variable.toString(),
          style: kTextStyleBig,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              onPress: onPress1,
              color: const Color(0xFF4C4F5E),
              child: const Icon(
                FontAwesomeIcons.minus,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              onPress: onPress2,
              color: const Color(0xFF4C4F5E),
              child: const Icon(
                FontAwesomeIcons.plus,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
