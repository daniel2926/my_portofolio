import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({
    super.key,
  });

  @override
  State<HomeSection> createState() => _HomeSectionState();
}
class _HomeSectionState extends State<HomeSection> { 
    Widget build(BuildContext context) {
      return Container(
        color: appWhite,
        height: 958,
        alignment: Alignment.center,
        child: const SizedBox(
        width: 864, // fixed width
        height: 766, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, I'm Daniel Yosh Apriando 👋",
              style: headline1
            ),
            SizedBox(height: 20),
            Text(
              "I’m a front-end developer with expertise in Flutter and building responsive UIs.",
              style: bodyText1
            ),
          ],
        ),
      )
      );
  }
}