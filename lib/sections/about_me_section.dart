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
      color: grey50, // Optional: for visual distinction
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
              'assets/FotoProfile.jpeg',
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
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus convallis blandit pharetra. Vivamus erat magna, commodo in tellus eget, vestibulum mollis purus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque molestie enim id facilisis luctus. Vivamus in rutrum justo. Curabitur tincidunt pharetra efficitur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas facilisis scelerisque erat, eget molestie libero congue vitae. Pellentesque lacinia eros quam, non feugiat sapien vulputate accumsan.",
                style: bodyText2,
              ),
              SizedBox(height: 20),
              Text(
                "Quisque imperdiet lobortis elit, eu ultrices metus aliquet tristique. Ut condimentum, ante sit amet congue facilisis, neque lorem congue nisi, et sollicitudin dolor elit fermentum diam.",
                style: bodyText2,
              ),
              SizedBox(height: 20),
              Text(
                "Quisque imperdiet lobortis elit, eu ultrices metus aliquet tristique.",
                style: bodyText2,
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              Text(
                " :) Nam euismod purus ut posuere bibendum.",
                style: bodyText2,
              )
            ],
          ),
        )
      ]),
    );
  }
}
