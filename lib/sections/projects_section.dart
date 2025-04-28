import 'package:flutter/material.dart';
import '../widgets/project_card.dart'; // pastikan import path-nya benar

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('projects'),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
      color: Colors.grey.shade50,
      child: Column(
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
          Column(
            children: [
              ProjectCard(
                imagePath: 'assets/ss.png',
                title: 'Renew market application development',
                role: 'Frontend and Backend Developer',
                skillsUsed: 'Flutter, Dart, Firebase',
                projectPeriod: 'Jan, 2025 - Mar, 2025',
                description:
                    'A simple web app for buying and selling used items, featuring user authentication, item listings, real-time chat, and search filters. Built with Flutter and Firebase for a smooth and user-friendly experience.',
                skills: ['Flutter', 'Firebase', 'Dart', 'Figma', 'Git'],
                imageBackgroundColor: Colors.pink.shade100,
                projectLink: 'https://yourprojectlink.com',
              ),
              const SizedBox(height: 40),
              ProjectCard(
                imagePath: 'ProjectDaniel.png',
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
            ],
          ),
        ],
      ),
    );
  }
}