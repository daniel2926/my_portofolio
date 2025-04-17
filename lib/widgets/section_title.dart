import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;

  const SectionTitle({
    super.key,
    required this.title,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 4),
      alignment: Alignment.center,
      child: Container(
        width: 240, // Set your desired width
        height: 48, // Set your desired height
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: appBlue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          style: titleStyle,
        ),
        ),
      
    );
  }
}
