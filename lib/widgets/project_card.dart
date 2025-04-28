import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String role;
  final String skillsUsed;
  final String projectPeriod;
  final String description;
  final List<String> skills;
  final Color imageBackgroundColor;
  final String projectLink;

  const ProjectCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.role,
    required this.skillsUsed,
    required this.projectPeriod,
    required this.description,
    required this.skills,
    required this.imageBackgroundColor,
    required this.projectLink,
  }) : super(key: key);

  void _launchURL() async {
    final Uri url = Uri.parse(projectLink);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $projectLink';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bagian gambar
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: imageBackgroundColor,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            ),
            padding: const EdgeInsets.all(32),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),

          // Bagian teks
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 16),

                // Role
                Text.rich(
                  TextSpan(
                    text: "• Role: ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: role,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),

                // Skills Used
                Text.rich(
                  TextSpan(
                    text: "• Skills Used: ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: skillsUsed,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),

                // Project Period
                Text.rich(
                  TextSpan(
                    text: "• Project Period: ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: projectPeriod,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Project Description
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "• Project Description: ",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Expanded(
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Skills Chips
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: skills.map((skill) {
                    return Chip(
                      label: Text(skill),
                      backgroundColor: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 24),

                // Project Link
                ElevatedButton.icon(
                  onPressed: _launchURL,
                  icon: const Icon(Icons.open_in_new, size: 18),
                  label: const Text('View Project'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade800,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}