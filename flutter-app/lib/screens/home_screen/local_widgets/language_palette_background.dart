//Flutter
import 'package:flutter/material.dart';

BoxDecoration ofBackground(List<Color> flag) {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: flag,
      stops: [0.4, 0.9],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}
