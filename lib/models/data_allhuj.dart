import 'dart:ui';

import 'package:flutter/material.dart';

class DataAllHuj {
  final String name, imagePath;

  Color backgroundColor;

  DataAllHuj({
    this.name,
    this.imagePath,
    this.backgroundColor,
  });
}

final DataAllHuj u11 = DataAllHuj(
  imagePath: "assets/icons/person.png",
  name: "Mohamed",
  backgroundColor: Color(0xFFF9F9F9),
);
final DataAllHuj u22 = DataAllHuj(
  imagePath: "assets/icons/person.png",
  name: "Adel",
  backgroundColor: Colors.white30,
);
final DataAllHuj u33 = DataAllHuj(
  imagePath: "assets/icons/person.png",
  name: "Mo",
  backgroundColor:  Color(0xFFF9F9F9),
);