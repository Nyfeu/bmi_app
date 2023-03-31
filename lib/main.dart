// ignore_for_file: use_key_in_widget_constructors

import 'package:bmi_app/views/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: const Color(0xFF0A0E21)),
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: Colors.white)),
      home: InputPage(),
    );
  }
}
