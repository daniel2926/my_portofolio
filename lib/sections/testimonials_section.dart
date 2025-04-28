import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/section_title.dart';
import 'package:my_portfolio/widgets/testimonial_card.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1116,
      color: grey50,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 48), // --> tambahin jarak atas sedikit

          // Styled Title: Testimonials
          SectionTitle(title: "Testimonials", titleStyle: sectionText), 

          const SizedBox(height: 24),

          const Text(
            'Here’s what people are saying about working with me:',
            style: bodyText1,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 64),

          // Row of two testimonial cards
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TestimonialCard(
                width: 400,
                height: 300,
                saying:
                    'Working with them was a great experience. The quality of code and communication was top-notch!',
                name: 'Daniel Yosh Apriando',
                role: 'Product Manager at StartupX',
              ),
              SizedBox(width: 48),
              TestimonialCard(
                width: 400,
                height: 300,
                saying:
                    'A reliable developer who always delivers on time. Highly recommended!',
                name: 'Kevin Smith',
                role: 'CTO at TechCorp',
              ),
            ],
          ),

          const SizedBox(height: 64),

          // Larger center-aligned card
          const TestimonialCard(
            width: 801,
            height: 332,
            saying:
                'Their dedication and attention to detail elevated our entire project. Truly a team player with great initiative and passion.',
            name: 'Emily Taylor',
            role: 'Lead Designer at CreativeHub',
          ),
        ],
      ),
    );
  }
}