import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_fonts.dart'; // Make sure this contains bodyText2 style

class SkillBadge extends StatelessWidget {
  final String title;
  final String logo;

  const SkillBadge({
    super.key,
    required this.title,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          logo,
          width: 47,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: bodyText2,
        ),
      ],
    );
  }
}
