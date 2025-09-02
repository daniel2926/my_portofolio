import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/section_title.dart';

class TabletAboutMeSection extends StatelessWidget {
  const TabletAboutMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: grey50,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1000,
            minHeight: screenHeight,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isNarrow = constraints.maxWidth < 700;

              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SectionTitle(title: "About Me", titleStyle: sectionText),
                  const SizedBox(height: 40),

                  // Profile Image
                  SizedBox(
                    width: isNarrow ? screenWidth * 0.7 : 400,
                    height: isNarrow ? screenWidth * 0.7 : 400,
                    child: Image.asset(
                      'assets/1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Text Content Block
                  Container(
                    width: screenWidth > 800 ? 800 : screenWidth * 0.95,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Curious About Me?", style: headline3),
                        Text("Here you go!", style: headline3),
                        const SizedBox(height: 20),
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
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
