import 'package:flutter/material.dart';

class GlobalShadow {
  static final shadowLow = [
    BoxShadow(
      blurRadius: 2,
      offset: const Offset(0, 1),
      color: const Color(0xff000D1A).withOpacity(0.15),
    ),
  ];
  static final buttonShadow = [
    BoxShadow(
      blurRadius: 6,
      offset: const Offset(0, 3),
      color: const Color(0xff003768).withOpacity(0.2),
    ),
  ];
}
