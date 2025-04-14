import 'package:flutter/material.dart';
import 'package:my_portfolio/sections/about_me_section.dart';
import 'package:my_portfolio/sections/contact_section.dart';
import 'package:my_portfolio/sections/home_section.dart';
import 'package:my_portfolio/sections/projects_section.dart';
import 'package:my_portfolio/sections/section.dart';
import 'package:my_portfolio/sections/stack_section.dart';
import 'package:my_portfolio/sections/testimonials_section.dart';
import 'package:my_portfolio/widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {   

  	final GlobalKey homeSectionKey = GlobalKey();
	  final GlobalKey aboutMeSectionKey = GlobalKey();
	  final GlobalKey stackSectionKey = GlobalKey();
	  final GlobalKey projectSectionKey = GlobalKey();
	  final GlobalKey testimonialSectionKey = GlobalKey();
	  final GlobalKey contactSectionKey = GlobalKey();
  
  final ScrollController _verticalScrollController = ScrollController();  
  void scrollToSection(GlobalKey key) {
  final context = key.currentContext;
  if (context != null) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(scrollToSection: scrollToSection, homeSectionKey: homeSectionKey, aboutMeSectionKey: aboutMeSectionKey, stackSectionKey: stackSectionKey, projectSectionKey: projectSectionKey, testimonialSectionKey: testimonialSectionKey, contactSectionKey: contactSectionKey),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: _verticalScrollController,
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            HomeSection(key: homeSectionKey,),
            AboutMeSection(key: aboutMeSectionKey,),
            StackSection(key : stackSectionKey),
            ProjectsSection(key: projectSectionKey,),
            TestimonialsSection(key: testimonialSectionKey,),
            ContactSection(key: contactSectionKey,)
          ],
        ),
      ),
    );
  }
}