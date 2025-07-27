import 'package:flutter/material.dart';

class OnBoardModel {
  final Widget title;
  final String? description;
  final String image;
  final String buttonText;
  final Widget? legacyText;
  final String? pageBg;

  OnBoardModel({
    required this.title,
    this.description,
    required this.image,
    required this.buttonText,
    this.legacyText,
    required this.pageBg,
  });
}
