import 'dart:ui';

import 'package:flutter/material.dart';

class DataAdmin {
  final String name, imagePath;

  Color backgroundColor;

  DataAdmin({
    this.name,
    this.imagePath,
    this.backgroundColor,
  });
}

final DataAdmin u1 = DataAdmin(
  imagePath: "assets/icons/person.png",
  name: "أحمد",
  backgroundColor: Colors.white30,
);
final DataAdmin u2 = DataAdmin(
  imagePath: "assets/icons/person.png",
  name: "Abdallah",
  backgroundColor: Color(0xFFF9F9F9),
);
final DataAdmin u3 = DataAdmin(
  imagePath: "assets/icons/person.png",
  name: "lolo",
  backgroundColor: Colors.white30,
);