import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 80,
      color: appBlack,
      alignment: Alignment.center,
      child: Text(
        'Copyright ©Daniel. All Rights Reserved.',
        style: bodyText1.copyWith(
          color: appWhite,
        ),
        textAlign: TextAlign.center,
     ),
);
}
}