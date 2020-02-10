import 'dart:ui';

import 'package:flutter/material.dart';

class DatasingleHuj {
  final String name, imagePath;

  Color backgroundColor;

  DatasingleHuj({
    this.name,
    this.imagePath,
    this.backgroundColor,
  });
}

final DatasingleHuj us1 = DatasingleHuj(
  imagePath: "assets/icons/person.png",
  name: "Mohamed",
  backgroundColor: Color(0xFFF9F9F9),
);