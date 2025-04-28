import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';

class TestimonialCard extends StatelessWidget {
  final double width;
  final double height;
  final String saying;
  final String name;
  final String role;

  const TestimonialCard({
    super.key,
    required this.width,
    required this.height,
    required this.saying,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32.0),
      decoration: BoxDecoration(
        color: appWhite,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar Placeholder
          Container(
            width: 64,
            height: 64,
            decoration: const BoxDecoration(
              color: grey400,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.person,
              size: 36,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 24),

          // Testimonial Quote
          Text(
            '"$saying"',
            style: bodyText3,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 24),

          // Name
          Text(
            name,
            style: headline3,
          ),
          const SizedBox(height: 4),

          // Role
          Text(
            role,
            style: bodyText4,
          ),
        ],
     ),
);
}
}
