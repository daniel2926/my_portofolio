import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/subsection_title.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String role;
  final String skillsUsed;
  final List<String> skills;
  final Color color;
  final String description;
  final String projectPeriod;
  final double width;
  final String link;

  const ProjectCard({
    required this.imagePath,
    required this.title,
    required this.role,
    required this.skillsUsed,
    required this.skills,
    required this.color,
    required this.description,
    required this.projectPeriod,
    required this.width,
    required this.link,
    super.key,
  });

  void _launchURL() async {
    final Uri uri = Uri.parse(link);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
Widget build(BuildContext context) {
  return Container(
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: [
        BoxShadow(
          color: appBlack.withOpacity(0.07),
          blurRadius: 3.0,
          offset: const Offset(0, 4),
        ),
        BoxShadow(
          color: appBlack.withOpacity(0.06),
          offset: const Offset(0, 2),
          blurRadius: 2.0,
        )
      ],
    ),
    color: appWhite,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // IMAGE SECTION
        Container(
          height: 180, // Set fixed height to prevent overflow/stretching
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          alignment: Alignment.center,
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),

        // CONTENT SECTION
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: headline3),
              const SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  text: "• Role: ",
                  style: headline4,
                  children: [TextSpan(text: role, style: bodyText3)],
                ),
              ),
              Text.rich(
                TextSpan(
                  text: "• Skills Used: ",
                  style: headline4,
                  children: [TextSpan(text: skillsUsed, style: bodyText3)],
                ),
              ),
              Text.rich(
                TextSpan(
                  text: "• Project Period: ",
                  style: headline4,
                  children: [TextSpan(text: projectPeriod, style: bodyText3)],
                ),
              ),
              const SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  text: "• Project Description: ",
                  style: headline4,
                  children: [TextSpan(text: description, style: bodyText3)],
                ),
              ),

              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: skills
                    .map((skill) => SubsectionTitle(title: skill, textStyle: headline4))
                    .toList(),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: _launchURL,
                child: const Text('View More', style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ),

        // ICON BUTTON (optional)
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(Icons.open_in_new, size: 24, color: grey400),
            onPressed: _launchURL,
          ),
        ),
      ],
    ),
  );
}

}