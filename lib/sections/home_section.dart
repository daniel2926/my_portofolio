import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/linked_icon_button.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({
    super.key,
  });

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  Widget build(BuildContext context) {
    return Container(
        color: appWhite,
        height: 800,
        alignment: Alignment.center,
        child: SizedBox(
          width: 864, // fixed width
          height: 766,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi, I'm Daniel Yosh Apriando 👋", style: headline1),
              SizedBox(height: 20),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus convallis blandit pharetra. Vivamus erat magna, commodo in tellus eget, vestibulum mollis purus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque molestie enim id facilisis luctus. Vivamus in rutrum justo. Curabitur tincidunt pharetra efficitur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas facilisis scelerisque erat, eget molestie libero congue vitae. Pellentesque lacinia eros quam, non feugiat sapien vulputate accumsan.",
                  style: bodyText1),
              SizedBox(height: 20),
              Row(
                children: [
                  LinkedIconButton(
                      icon: SvgPicture.asset(
                        'assets/github.svg',
                        width: 24,
                        height: 24,
                      ),
                      url: 'https://github.com/daniel2926',
                      size: 48),
                  LinkedIconButton(
                      icon: Image.asset(
                        'assets/icons8-linkedin-48.png',
                        width: 24,
                        height: 24,
                      ),
                      url: 'https://www.linkedin.com/in/daniel-simamora-260704dc/',
                      size: 48),
                ],
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on_outlined,
                          color: Colors.grey, size: 20),
                      SizedBox(width: 6),
                      Text(
                        'Based in Jakarta, Indonesia',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, size: 10, color: Colors.green),
                      SizedBox(width: 8),
                      Text(
                        'Available for new projects',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: appPink,
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/FotoProfile.jpeg'), // ganti dengan path kamu
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
