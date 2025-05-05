import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_fonts.dart';

class CustomDrawer extends StatefulWidget implements PreferredSizeWidget {
  final Function(GlobalKey key) scrollToSection;
  final GlobalKey homeSectionKey;
  final GlobalKey aboutMeSectionKey;
  final GlobalKey contactSectionKey;
  final GlobalKey stackSectionKey;
  final GlobalKey projectSectionKey;
  final GlobalKey testimonialSectionKey;

  const CustomDrawer({
    super.key,
    required this.scrollToSection,
    required this.homeSectionKey,
    required this.aboutMeSectionKey,
    required this.contactSectionKey,
    required this.stackSectionKey,
    required this.projectSectionKey,
    required this.testimonialSectionKey,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool isDrawerOpen = false;

  void toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Collapsed app bar row with menu icon
        Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  isDrawerOpen ? Icons.close : Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: toggleDrawer,
              ),
              const SizedBox(width: 16),
            ],
          ),
        ),

        // Expandable menu
      AnimatedSize(
  duration: const Duration(milliseconds: 300),
  curve: Curves.easeInOut,
  child: Visibility(
    visible: isDrawerOpen,
    child: Container(
      color: Colors.black,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerItem('Home', widget.homeSectionKey),
          drawerItem('About Me', widget.aboutMeSectionKey),
          drawerItem('Stack', widget.stackSectionKey),
          drawerItem('Projects', widget.projectSectionKey),
          drawerItem('Testimonials', widget.testimonialSectionKey),
          drawerItem('Contact', widget.contactSectionKey),
        ],
      ),
    ),
  ),
),


      ],
    );
  }

  Widget drawerItem(String title, GlobalKey key) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextButton(
        onPressed: () {
          widget.scrollToSection(key);
          toggleDrawer();
        },
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          alignment: Alignment.centerLeft,
        ),
        child: Text(title, style: appbarText),
      ),
    );
  }
}
