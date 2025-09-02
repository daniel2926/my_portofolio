import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/section_title.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1300,
      color: appWhite, // Optional: for visual distinction
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
        SectionTitle(title: "About Me", titleStyle: sectionText),
        const SizedBox(height: 40),
        Container(
          width: 400,
          height: 400,
          child: SizedBox(
            width: 341,
            height: 341,
            child: Image.asset(
              'assets/1.png',
              width: 341,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: 800,
          height: 486,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Curious About Me?, Here you go!",
                style: headline3,
              ),
              const SizedBox(height: 20),
              Text(
                "I’m a technology enthusiast who enjoys solving problems through code and design. Over the years, I’ve explored different areas of development—from web applications to hardware integration—allowing me to combine creativity with engineering skills. I believe in writing clean, maintainable code and building products that truly help people.",
                style: bodyText2,
              ),
              SizedBox(height: 20),
              Text(
                "Along the way, I’ve developed skills and interests in different areas of technology, including:",
                style: bodyText2,
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          '- Exploring Data Analytics',
                          textAlign: TextAlign.left,
                          style: bodyText3,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '- Passionate about Software Development',
                          textAlign: TextAlign.left,
                          style: bodyText3,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          '- Building Apps with Flutter',  
                          textAlign: TextAlign.left,
                          style: bodyText3,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '- Learning Cloud Technologies',
                          textAlign: TextAlign.left,
                          style: bodyText3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "✨Thank you for your time and assistance.",
                style: bodyText2,
              )
            ],
          ),
        )
      ]),
    );
  }
}
