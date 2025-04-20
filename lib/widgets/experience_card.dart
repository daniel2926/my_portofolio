import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';

class ExperienceCard extends StatelessWidget {
  final String title;
  final String organization;
  final String period;
  final List<String> explanation;

  const ExperienceCard({
    super.key,
    required this.title,
    required this.organization,
    required this.period,
    required this.explanation,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 696,
        padding: const EdgeInsets.all(24),
        constraints: const BoxConstraints(minHeight: 180),
        margin: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: appWhite,
          borderRadius: BorderRadius.circular(12),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title + Organization + Period in a Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(organization, style: bodyText3),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // ⬅ Tambahkan ini
                    children: [
                      Text(title, style: headline3),
                      const SizedBox(height: 4),
                      Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: explanation.take(5).map((point) {
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
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
                    ],
                  )
                ),
                Expanded(
                  flex: 2,
                  child: Text(period, style: bodyText3),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Explanation Bullets
          ],
        ),
      ),
    );
  }
}
