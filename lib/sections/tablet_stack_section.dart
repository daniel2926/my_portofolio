import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/experience_card.dart';
import 'package:my_portfolio/widgets/section_title.dart';
import 'package:my_portfolio/widgets/skill_badge.dart';
import 'package:my_portfolio/widgets/subsection_title.dart';
import 'package:my_portfolio/widgets/tablet_experience_card.dart';

class TabletStackSection extends StatelessWidget {
const TabletStackSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2088,
      color: appWhite,
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Stack Section
          Container(
            height: 800,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SectionTitle(title: "Stack", titleStyle: sectionText),
                const SizedBox(height: 8),
                SubsectionTitle(title: "skills", textStyle: headline4),
                const SizedBox(height: 16),
                Text(
                  "The skills, tools and technologies I am really good at:",
                  style: bodyText1,
                ),
                const SizedBox(height: 32),
                Center(
                  child: Wrap(
                    direction: Axis.vertical,
                    spacing: 16,
                    runSpacing: 16,
                    alignment: WrapAlignment.center,
                    children: const [
                      SkillBadge(title: "Dart", logo: "assets/dart.png"),
                      SkillBadge(title: "Flutter", logo: "assets/flutter.png"),
                      SkillBadge(title: "Firebase", logo: "assets/firebase.png"),
                      SkillBadge(title: "Git", logo: "assets/git.png"),
                      SkillBadge(title: "Figma", logo: "assets/figma.png"),
                      SkillBadge(title: "Python", logo: "assets/python.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
           // OS Section
          Container(
            height: 360,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SubsectionTitle(title: "OS", textStyle: headline4),
                const SizedBox(height: 32),
                Center(
                  child: Wrap(
                    direction: Axis.vertical,
                    spacing: 16,
                    runSpacing: 16,
                    alignment: WrapAlignment.center,
                    children: const [
                      SkillBadge(title: "Ios", logo: "assets/ios.png"),
                      SkillBadge(title: "Web", logo: "assets/googlechrome.png"),
                      SkillBadge(title: "Android", logo: "assets/android.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Experience Section
          Container(
            height: 880,
            width: 864,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SubsectionTitle(title: "Experience", textStyle: headline4),
                const SizedBox(height: 12),
                Text(
                  "Here is a quick summary of my most recent experience:",
                  style: bodyText1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const TabletExperienceCard(
                  title: "Internship",
                  organization: "Software Factory",
                  period: "2023 - Present",
                  explanation: [
                    "Developed frontend with Flutter.",
                    "Maintained backend with Firebase.",
                    "Collaborated in Agile environment.",
                    "Implemented responsive UI.",
                    "Wrote unit and widget tests."
                  ],
                ),
                const TabletExperienceCard(
                  title: "IT Student",
                  organization: "Jakarta International University",
                  period: "2022 - Present",
                  explanation: [
                    "Built internal dashboard features.",
                    "Integrated REST APIs with robust.",
                    "Collaborated in daily Scrum.",
                    "Refactored legacy code for better.",
                    "Wrote documentation for onboardin.",
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
