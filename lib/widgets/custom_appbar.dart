import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final Function(GlobalKey key) scrollToSection;
final GlobalKey homeSectionKey;
final GlobalKey aboutMeSectionKey;
final GlobalKey stackSectionKey;
final GlobalKey projectSectionKey;
final GlobalKey testimonialSectionKey;
final GlobalKey contactSectionKey;

const CustomAppBar({
  super.key,
  required this.scrollToSection,
  required this.homeSectionKey,
  required this.aboutMeSectionKey,
  required this.stackSectionKey,
  required this.projectSectionKey,
  required this.testimonialSectionKey,
  required this.contactSectionKey,
});
  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
		return Container();
  }

}