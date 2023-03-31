// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

// Classes:

class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.color, this.child, this.onPress});

  final Color color;
  final Widget? child;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(kMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius),
          color: color,
        ),
        child: child,
      ),
    );
  }
}
