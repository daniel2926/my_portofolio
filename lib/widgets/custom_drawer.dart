import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_fonts.dart';

class CustomDrawer extends StatefulWidget implements PreferredSizeWidget{
  final Function(GlobalKey key) scrollToSection;
  final GlobalKey homeSectionKey;
  final GlobalKey aboutMeSectionKey;
  final GlobalKey contactSectionKey;
  final GlobalKey stackSectionKey;
  final GlobalKey projectSectionKey;
  final GlobalKey testimonialSectionKey; // add more as needed

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
  Size get preferredSize => const Size.fromHeight(400);
}

class _CustomDrawerState extends State<CustomDrawer> {  
  bool isDrawerOpen = false;

   static const double collapsedHeight = 80;
  static const double expandedHeight = 400;

  void toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }


  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(400),
      child:AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        color: Colors.black,
        height: isDrawerOpen ? expandedHeight : collapsedHeight,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             IconButton(
              icon: Icon(
                isDrawerOpen ? Icons.menu_open_outlined : Icons.menu,
                color: Colors.white,
                size: 30,
              ),
              onPressed: toggleDrawer,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.zero,
            ),
            const SizedBox(height: 12),
            ClipRect(
              child: Align(
                heightFactor: isDrawerOpen ? 1.0 : 0.0,
                alignment: Alignment.topCenter,
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
          ],
        ),
        ),
    );
  }
  Widget drawerItem(String title, GlobalKey key) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: TextButton(
      onPressed: () {
        widget.scrollToSection(key);
        toggleDrawer();
      },
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        alignment: Alignment.centerLeft,
      ),
      child: Text(
        title,
        style: appbarText,
      ),
    ),
  );
}

}
