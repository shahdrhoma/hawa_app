import 'package:flutter/material.dart';

class BodyModel {
  final String photo;
  final String largeText;
  final String smallText;
  IconData? iconPath;

  BodyModel({
    required this.photo,
    required this.largeText,
    required this.smallText,
    iconPath,
  });
}
