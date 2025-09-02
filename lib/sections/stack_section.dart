import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/experience_card.dart';
import 'package:my_portfolio/widgets/section_title.dart';
import 'package:my_portfolio/widgets/skill_badge.dart';
import 'package:my_portfolio/widgets/subsection_title.dart';

class StackSection extends StatelessWidget {
  const StackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1656,
        color: appWhite, // Optional: for visual distinction
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 454,
              child: Column(
                children: [
                  SectionTitle(title: "Stack", titleStyle: sectionText),
                  SizedBox(
                    height: 5,
                  ),
                  SubsectionTitle(title: "skills", textStyle: headline4),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "The skills, tools and technologies I am really good at: ",
                    style: bodyText1,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Wrap(
                      spacing: 100,
                      runSpacing: 20,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        SkillBadge(title: "Dart", logo: "assets/dart.png"),
                        SkillBadge(
                            title: "Flutter", logo: "assets/flutter.png"),
                        SkillBadge(
                            title: "Firebase", logo: "assets/firebase.png"),
                        SkillBadge(title: "Git", logo: "assets/git.png"),
                        SkillBadge(title: "Figma", logo: "assets/figma.png"),
                        SkillBadge(title: "Python", logo: "assets/python.png"),
                      ])
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 398,
              child: Column(
                children: [
                  SubsectionTitle(title: "OS", textStyle: headline4),
                  SizedBox(
                    height: 60,
                  ),
                  Wrap(
                      spacing: 100,
                      runSpacing: 20,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.spaceAround,
                      children: [
                        SkillBadge(title: "Ios", logo: "assets/ios.png"),
                        SkillBadge(
                            title: "Web", logo: "assets/googlechrome.png"),
                        SkillBadge(
                            title: "Android", logo: "assets/android.png"),
                      ])
                ],
              ),
            ),
            Container(
              height: 784,
              width: 864,
              alignment: Alignment.center,
              child: Column(
                children: [
                  SubsectionTitle(title: "Experience", textStyle: headline4),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Here is a quick summary of my most recent experience: ",
                    style: bodyText1,
                  ),
                  SizedBox(height: 20),
                  ExperienceCard(
                      title: "IT Student",
                      organization: "Jakarta International University",
                      period: "2022 - Present",
                      explanation: [
                        "Built internal dashboard features.",
                        "Integrated REST APIs with robust.",
                        "Collaborated in daily Scrum.",
                        "Refactored legacy code for better.",
                        "Wrote documentation for onboardin.",
                      ]),
                  ExperienceCard(
                      title: "Participant",
                      organization: "Handong Global University",
                      period: "2025 - 2025",
                      explanation: [
                        "Completed the UNESCO UNITWIN Design Sprint Camp 2025.",
                        "Trained in problem identification and solution mapping.",
                        "Practiced collaborative decision-making methods.",
                        "Designed and prototyped apps using Figma.",
                        "Explored AI integration in digital product design.",
                      ]),
                ],
              ),
            )
          ],
        ));
  }
}
