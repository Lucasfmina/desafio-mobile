import 'package:flutter/material.dart';

class MainIcon extends StatelessWidget {
  final String label;
  final String iconPath;
  final double iconHeight;

  const MainIcon(
      {super.key,
      required this.label,
      required this.iconPath,
      required this.iconHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          iconPath,
          height: iconHeight,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            label,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        )
      ],
    );
  }
}
