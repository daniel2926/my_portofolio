import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/project_card.dart';
import 'package:my_portfolio/widgets/section_title.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2460,
      color: appWhite, // Optional: for visual distinction
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SectionTitle(title: "Projects", titleStyle: sectionText,),
          SizedBox(height: 48),
          Text("Some of the noteworthy projects i have built : "),
          SizedBox(height: 48),
          ProjectCard(
            imagePath: "assets/Boejoe.png", 
            title: "Renew Market Application Development", 
            role: "Frontend and Backend Developer", 
            skillsUsed: "Flutter, Dart, Firebase", 
            skills: ['Flutter', 'Dart', 'Firebase'], 
            color: appGreen, 
            description:"Quisque imperdiet lobortis elit, eu ultrices metus aliquet tristique. Ut condimentum, ante sit amet congue facilisis, neque lorem congue nisi, et sollicitudin dolor elit fermentum diam.", 
            projectPeriod: "Jan, 2025 - Mar, 2025", 
            width: 50, 
            link: 'https://github.com/daniel2926')
        ],
      ),
    );
  }
}
