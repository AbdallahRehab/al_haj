import 'dart:ui';

import 'package:flutter/material.dart';

class dataAdminfollowuser {
  final String name, imagePath;

  Color backgroundColor;

  dataAdminfollowuser({
    this.name,
    this.imagePath,
    this.backgroundColor,
  });
}

final dataAdminfollowuser uf1 = dataAdminfollowuser(
  imagePath: "assets/icons/person.png",
  name: "Ali",
  backgroundColor: Color(0xFFF9F9F9),
);