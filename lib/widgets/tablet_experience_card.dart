import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';

class TabletExperienceCard extends StatelessWidget {
  final String title;
  final String organization;
  final String period;
  final List<String> explanation;

  const TabletExperienceCard({
    super.key,
    required this.title,
    required this.organization,
    required this.period,
    required this.explanation,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth * 0.85;
        if (width > 800) width = 800;
        if (width < 320) width = 320;

        return Center(
          child: Container(
            width: width,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: appWhite,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: appBlack.withOpacity(0.07),
                  blurRadius: 4.0,
                  offset: const Offset(0, 4),
                ),
                BoxShadow(
                  color: appBlack.withOpacity(0.05),
                  offset: const Offset(0, 2),
                  blurRadius: 3.0,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(organization, style: bodyText3),
                const SizedBox(height: 6),
                Text(title, style: headline3),
                const SizedBox(height: 6),
                Text(period, style: bodyText3),
                const SizedBox(height: 12),

                // Bullet List
                ...explanation.take(5).map((point) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("• ", style: TextStyle(fontSize: 16)),
                        Expanded(
                          child: Text(
                            point,
                            style: bodyText3,
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        );
      },
    );
  }
}
