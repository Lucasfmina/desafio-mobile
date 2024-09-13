import 'package:flutter/material.dart';

class ImageWithLabel extends StatelessWidget {
  final String label;
  final String iconPath;
  final double iconHeight;

  const ImageWithLabel(
      {super.key,
      required this.label,
      required this.iconPath,
      required this.iconHeight});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        iconPath,
        height: iconHeight,
      )
    ]);
  }
}
