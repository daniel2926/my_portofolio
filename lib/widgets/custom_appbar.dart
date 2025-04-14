import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_fonts.dart';

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
		return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 80,
      actions: [
        TextButton(onPressed: () => scrollToSection(homeSectionKey), child: Text("Home", style: appbarText,)),
        TextButton(onPressed: () => scrollToSection(aboutMeSectionKey), child: Text("About Me", style: appbarText)),
        TextButton(onPressed: () => scrollToSection(stackSectionKey), child: Text("Stack", style: appbarText)),
        TextButton(onPressed: () => scrollToSection(projectSectionKey), child: Text("Projects", style: appbarText)),
        TextButton(onPressed: () => scrollToSection(testimonialSectionKey), child: Text("Testimonials",style: appbarText)),
        TextButton(onPressed: () => scrollToSection(contactSectionKey), child: Text("Contact", style: appbarText)),
      ],
    );
  }

}