import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';

class SubsectionTitle extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  const SubsectionTitle({super.key, required this.title, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 28,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      alignment: Alignment.center,
      child: Container(
        width: 240, // Set your desired width
        height: 28, // Set your desired height
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: grey200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          style: textStyle 
          ),
        ),
      
    );
  }
}