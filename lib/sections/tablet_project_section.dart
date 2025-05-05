import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/project_card.dart';

class TabletProjectSection extends StatelessWidget {
  const TabletProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth > 1000;
        final horizontalPadding = isWide ? 64.0 : 24.0;

        return Container(
          key: const Key('projects'),
          color: Colors.grey.shade50,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 48.0),
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title
                Text(
                  "Projects",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Some of the noteworthy projects I have built:",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.grey.shade600,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),

                // Project Cards
                Wrap(
                  spacing: 32,
                  runSpacing: 40,
                  alignment: WrapAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 550),
                      child: ProjectCard(
                        imagePath: 'assets/ss.png',
                        title: 'Renew market application development',
                        role: 'Frontend and Backend Developer',
                        skillsUsed: 'Flutter, Dart, Firebase',
                        projectPeriod: 'Jan, 2025 - Mar, 2025',
                        description:
                            'A simple web app for buying and selling used items, featuring user authentication, item listings, real-time chat, and search filters.',
                        skills: ['Flutter', 'Firebase', 'Dart', 'Figma', 'Git'],
                        imageBackgroundColor: Colors.pink.shade100,
                        projectLink: 'https://yourprojectlink.com',
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 550),
                      child: ProjectCard(
                        imagePath: 'assets/ProjectDaniel.png',
                        title: 'My Portfolio Website',
                        role: 'Frontend Developer',
                        skillsUsed: 'Flutter, Dart, Web Deployment',
                        projectPeriod: 'Apr, 2025',
                        description:
                            'A personal portfolio website showcasing projects, skills, and contact information. Built responsively with Flutter Web.',
                        skills: ['Flutter', 'Dart', 'Firebase Hosting'],
                        imageBackgroundColor: Colors.blue.shade100,
                        projectLink: 'https://yourportfoliolink.com',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
