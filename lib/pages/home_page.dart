import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/sections/about_me_section.dart';
import 'package:my_portfolio/sections/animated_section.dart';
import 'package:my_portfolio/sections/contact_section.dart';
import 'package:my_portfolio/sections/home_section.dart';
import 'package:my_portfolio/sections/projects_section.dart';
import 'package:my_portfolio/sections/stack_section.dart';
import 'package:my_portfolio/sections/tablet_about_me_section.dart';
import 'package:my_portfolio/sections/tablet_contact_section.dart';
import 'package:my_portfolio/sections/tablet_home_section.dart';
import 'package:my_portfolio/sections/tablet_project_section.dart';
import 'package:my_portfolio/sections/tablet_stack_section.dart';
import 'package:my_portfolio/sections/tablet_testimonials_section.dart';
import 'package:my_portfolio/sections/testimonials_section.dart';
import 'package:my_portfolio/widgets/custom_appbar.dart';
import 'package:my_portfolio/widgets/custom_drawer.dart';
import 'package:my_portfolio/widgets/custom_footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  double tablewidth = 200;
  double desktop = 1024;

  bool isAboutVisible = true;
  bool isProjectsVisible = true;
  bool isContactVisible = true;
  bool isSkillsVisible = true;
  bool isTestimonialsVisible = true;
  bool isHomeVisible = true;

  final GlobalKey homeSectionKey = GlobalKey();
  final GlobalKey aboutMeSectionKey = GlobalKey();
  final GlobalKey stackSectionKey = GlobalKey();
  final GlobalKey projectSectionKey = GlobalKey();
  final GlobalKey testimonialSectionKey = GlobalKey();
  final GlobalKey contactSectionKey = GlobalKey();

  final ScrollController _verticalScrollController = ScrollController();

  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();

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

    _verticalScrollController.addListener(() {
      if (_debounce?.isActive ?? false) _debounce!.cancel();
      _debounce = Timer(const Duration(milliseconds: 100), () {
        onScroll();
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      onScroll();
      _animationController.forward();
    });
  }

  onScroll() {
    checkSectionVisibility(homeSectionKey, (v) => setState(() => isHomeVisible = v), isHomeVisible);
    checkSectionVisibility(aboutMeSectionKey, (v) => setState(() => isAboutVisible = v), isAboutVisible);
    checkSectionVisibility(stackSectionKey, (v) => setState(() => isSkillsVisible = v), isSkillsVisible);
    checkSectionVisibility(projectSectionKey, (v) => setState(() => isProjectsVisible = v), isProjectsVisible);
    checkSectionVisibility(testimonialSectionKey, (v) => setState(() => isTestimonialsVisible = v), isTestimonialsVisible);
    checkSectionVisibility(contactSectionKey, (v) => setState(() => isContactVisible = v), isContactVisible);
  }

  void checkSectionVisibility(GlobalKey key, void Function(bool) onVisible, bool currentValue) {
    final RenderBox? box = key.currentContext?.findRenderObject() as RenderBox?;
    if (box != null) {
      final position = box.localToGlobal(Offset.zero).dy;
      final screenHeight = MediaQuery.of(context).size.height.clamp(700, double.infinity);
      final visible = position < screenHeight * 1.0;
      if (visible != currentValue) {
        onVisible(visible);
      }
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _verticalScrollController.removeListener(onScroll);
    _animationController.dispose();
    _verticalScrollController.dispose();
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
    double screenWidth = MediaQuery.of(context).size.width;
    final bool isDesktop = screenWidth >= desktop;
    final bool isTablet = screenWidth >= tablewidth && screenWidth < desktop;

    return Scaffold(
      appBar: isDesktop
          ? CustomAppBar(
              scrollToSection: scrollToSection,
              homeSectionKey: homeSectionKey,
              aboutMeSectionKey: aboutMeSectionKey,
              stackSectionKey: stackSectionKey,
              projectSectionKey: projectSectionKey,
              testimonialSectionKey: testimonialSectionKey,
              contactSectionKey: contactSectionKey,
            )
          : null,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          if (!isDesktop)
            CustomDrawer(
              scrollToSection: scrollToSection,
              homeSectionKey: homeSectionKey,
              aboutMeSectionKey: aboutMeSectionKey,
              stackSectionKey: stackSectionKey,
              projectSectionKey: projectSectionKey,
              testimonialSectionKey: testimonialSectionKey,
              contactSectionKey: contactSectionKey,
            ),
          Expanded(
            child: SingleChildScrollView(
              controller: _verticalScrollController,
              child: SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                physics: screenWidth < tablewidth
                    ? const BouncingScrollPhysics()
                    : const NeverScrollableScrollPhysics(),
                child: SizedBox(
                  width: screenWidth < tablewidth ? tablewidth : screenWidth,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedSection(
                        isVisible: isHomeVisible,
                        slideAnimation: _slideAnimation,
                        child: isTablet && !isDesktop
                            ? TabletHomeSection(key: homeSectionKey,)
                            : HomeSection(key: homeSectionKey),
                      ),
                      AnimatedSection(
                        isVisible: isAboutVisible,
                        slideAnimation: _slideAnimation,
                        child: isTablet && !isDesktop
                            ? TabletAboutMeSection(key: aboutMeSectionKey,)
                            : AboutMeSection(key: aboutMeSectionKey),
                      ),
                      AnimatedSection(
                        isVisible: isSkillsVisible,
                        slideAnimation: _slideAnimation,
                        child: isTablet && !isDesktop
                            ?  TabletStackSection(key: stackSectionKey,)
                            : StackSection(key: stackSectionKey),
                      ),
                      AnimatedSection(
                        isVisible: isProjectsVisible,
                        slideAnimation: _slideAnimation,
                        child: isTablet && !isDesktop
                            ?  TabletProjectSection(key: projectSectionKey,)
                            : ProjectsSection(key: projectSectionKey),
                      ),
                      AnimatedSection(
                        isVisible: isTestimonialsVisible,
                        slideAnimation: _slideAnimation,
                        child: isTablet && !isDesktop
                            ? TabletTestimonialsSection(key: testimonialSectionKey,)
                            : TestimonialsSection(key: testimonialSectionKey),
                      ),
                      AnimatedSection(
                        isVisible: isContactVisible,
                        slideAnimation: _slideAnimation,
                         child: isTablet && !isDesktop
                            ? TabletContactSection(key: contactSectionKey,)
                            : TabletContactSection(key: contactSectionKey),
                      ),
                      CustomFooter(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
