import 'package:flutter/material.dart';
import 'package:my_portfolio/sections/about_me_section.dart';
import 'package:my_portfolio/sections/animated_section.dart';
import 'package:my_portfolio/sections/contact_section.dart';
import 'package:my_portfolio/sections/home_section.dart';
import 'package:my_portfolio/sections/projects_section.dart';
import 'package:my_portfolio/sections/stack_section.dart';
import 'package:my_portfolio/sections/testimonials_section.dart';
import 'package:my_portfolio/widgets/custom_appbar.dart';
import 'package:my_portfolio/widgets/custom_footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool isAboutVisible = false;
  bool isProjectsVisible = false;
  bool isContactVisible = false;
  bool isSkillsVisible = false;
  bool isTestimonialsVisible = false;
  bool isHomeVisible = false;

  final GlobalKey homeSectionKey = GlobalKey();
  final GlobalKey aboutMeSectionKey = GlobalKey();
  final GlobalKey stackSectionKey = GlobalKey();
  final GlobalKey projectSectionKey = GlobalKey();
  final GlobalKey testimonialSectionKey = GlobalKey();
  final GlobalKey contactSectionKey = GlobalKey();

  final ScrollController _verticalScrollController = ScrollController();

  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    // Trigger visibility changes after some time
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isHomeVisible = true; // Make the HomeSection visible
        print('Home section visible: $isHomeVisible');
        _animationController.forward(); // Trigger the animation for the first section
      });
    });

    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        isAboutVisible = true; // Make the AboutMeSection visible
        print('About section visible: $isAboutVisible');
      });
    });

    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        isProjectsVisible = true; // Make the ProjectsSection visible
        print('Projects section visible: $isProjectsVisible');
      });
    });

    Future.delayed(const Duration(seconds: 8), () {
      setState(() {
        isSkillsVisible = true; // Make the SkillsSection visible
        print('Skills section visible: $isSkillsVisible');
      });
    });

    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        isTestimonialsVisible = true; // Make the TestimonialsSection visible
        print('Testimonials section visible: $isTestimonialsVisible');
      });
    });

    Future.delayed(const Duration(seconds: 12), () {
      setState(() {
        isContactVisible = true; // Make the ContactSection visible
        print('Contact section visible: $isContactVisible');
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
      appBar: CustomAppBar(
        scrollToSection: scrollToSection,
        homeSectionKey: homeSectionKey,
        aboutMeSectionKey: aboutMeSectionKey,
        stackSectionKey: stackSectionKey,
        projectSectionKey: projectSectionKey,
        testimonialSectionKey: testimonialSectionKey,
        contactSectionKey: contactSectionKey,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: _verticalScrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSection(
              isVisible: isHomeVisible,
              slideAnimation: _slideAnimation,
              child: HomeSection(key: homeSectionKey),
            ),
            AnimatedSection(
              isVisible: isAboutVisible,
              slideAnimation: _slideAnimation,
              child: AboutMeSection(key: aboutMeSectionKey),
            ),
            AnimatedSection(
              isVisible: isProjectsVisible,
              slideAnimation: _slideAnimation,
              child: StackSection(key: stackSectionKey),
            ),
            AnimatedSection(
              isVisible: isSkillsVisible,
              slideAnimation: _slideAnimation,
              child: ProjectsSection(key: projectSectionKey),
            ),
            AnimatedSection(
              isVisible: isTestimonialsVisible,
              slideAnimation: _slideAnimation,
              child: TestimonialsSection(key: testimonialSectionKey),
            ),
            AnimatedSection(
              isVisible: isContactVisible,
              slideAnimation: _slideAnimation,
              child: ContactSection(key: contactSectionKey),
            ),
            CustomFooter(),
          ],
        ),
      ),
    );
  }
}
