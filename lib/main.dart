import 'package:dice/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.white,
          Colors.blue,
        ),
      ),
    ),
  );
}
