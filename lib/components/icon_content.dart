// ignore_for_file: use_key_in_widget_constructors

// Imports:

import 'package:flutter/material.dart';
import '../constants.dart';

// Classes:

class IconContent extends StatelessWidget {
  const IconContent({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kIconSize,
          color: kIconColor,
        ),
        const SizedBox(
          height: kSpacing,
        ),
        Text(
          text,
          style: kTextStyle,
        )
      ],
    );
  }
}
