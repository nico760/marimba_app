import 'package:flutter/material.dart';

class KeyDecorationConstants {
  static final List<BoxShadow> listShadow = [
            const BoxShadow(
                color: Color.fromARGB(255, 150, 146, 146),
                offset: Offset(-0.25, -0.25),
                blurRadius: 5,
                spreadRadius: 1),
            const BoxShadow(
                color: Color.fromARGB(255, 150, 146, 146),
                offset: Offset(0.25, 0.25),
                blurRadius: 5,
                spreadRadius: 2)
          ];
}