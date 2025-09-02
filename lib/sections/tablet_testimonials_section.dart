import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/section_title.dart';
import 'package:my_portfolio/widgets/testimonial_card.dart';

class TabletTestimonialsSection extends StatelessWidget {
  const TabletTestimonialsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxCardWidth = constraints.maxWidth < 600 ? constraints.maxWidth * 0.9 : 600;

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 24.0),
          color: grey50,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title
              SectionTitle(title: "Testimonials", titleStyle: sectionText),
              const SizedBox(height: 24),
              const Text(
                'Here’s what people are saying about working with me:',
                style: bodyText1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 55),

              // Testimonial Cards
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TestimonialCard(
                    width: maxCardWidth,
                    height: 300,
                    saying:
                        'Working with them was a great experience. The quality of code and communication was top-notch!',
                    name: 'Daniel Yosh Apriando',
                    role: 'Product Manager at StartupX',
                  ),
                  const SizedBox(height: 32),
                  TestimonialCard(
                    width: maxCardWidth,
                    height: 300,
                    saying:
                        'A reliable developer who always delivers on time. Highly recommended!',
                    name: 'Kevin Smith',
                    role: 'CTO at TechCorp',
                  ),
                  const SizedBox(height: 32),
                  TestimonialCard(
                    width: maxCardWidth,
                    height: 360,
                    saying:
                        'Their dedication and attention to detail elevated our entire project. Truly a team player with great initiative and passion.',
                    name: 'Emily Taylor',
                    role: 'Lead Designer at CreativeHub',
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
