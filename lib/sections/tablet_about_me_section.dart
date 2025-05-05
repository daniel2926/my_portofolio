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
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1000,
            minHeight: screenHeight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SectionTitle(title: "About Me", titleStyle: sectionText),
              const SizedBox(height: 40),

              // Profile Image
              SizedBox(
                width: 400,
                height: 400,
                child: Image.asset(
                  'assets/FotoProfile.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 40),

              // Text Content Block
              Container(
                width: screenWidth > 800 ? 800 : screenWidth * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Split headline text manually
                    Text(
                      "Curious About Me?",
                      style: headline3,
                    ),
                    Text(
                      "Here you go!",
                      style: headline3,
                    ),
                    const SizedBox(height: 20),

                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus convallis blandit pharetra. Vivamus erat magna, commodo in tellus eget, vestibulum mollis purus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque molestie enim id facilisis luctus. Vivamus in rutrum justo. Curabitur tincidunt pharetra efficitur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas facilisis scelerisque erat, eget molestie libero congue vitae. Pellentesque lacinia eros quam, non feugiat sapien vulputate accumsan.",
                      style: bodyText2,
                    ),
                    const SizedBox(height: 20),

                    Text(
                      "Quisque imperdiet lobortis elit, eu ultrices metus aliquet tristique. Ut condimentum, ante sit amet congue facilisis, neque lorem congue nisi, et sollicitudin dolor elit fermentum diam.",
                      style: bodyText2,
                    ),
                    const SizedBox(height: 20),

                    Text(
                      "Quisque imperdiet lobortis elit, eu ultrices metus aliquet tristique.",
                      style: bodyText2,
                    ),
                    const SizedBox(height: 20),

                    Column(
                      children: [
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                '- Web Developer',
                                textAlign: TextAlign.left,
                                style: bodyText3,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '- Software Engineer',
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
                                '- Hardware Engineer',
                                textAlign: TextAlign.left,
                                style: bodyText3,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '- Programming Enthusiast',
                                textAlign: TextAlign.left,
                                style: bodyText3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    Text(
                      " :) Nam euismod purus ut posuere bibendum.",
                      style: bodyText2,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
