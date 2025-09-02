import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/linked_icon_button.dart';

class TabletHomeSection extends StatefulWidget {
  const TabletHomeSection({Key? key}) : super(key: key);

  @override
  State<TabletHomeSection> createState() => _TabletHomeSectionState();
}

class _TabletHomeSectionState extends State<TabletHomeSection> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(1.5, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 700;

        return Container(
          color: appWhite,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 864),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      "Hi, I'm Daniel Yosh Apriando 👋",
                      textStyle: headline1,
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  pause: const Duration(milliseconds: 500),
                ),
                const SizedBox(height: 20),

                Text(
                  "I’m passionate about building modern and user-friendly applications with clean design and efficient code. With a strong foundation in technology and problem-solving, I enjoy turning ideas into real projects that create impact. Currently, I’m open to exciting opportunities and collaborations to bring innovative solutions to life.",
                  style: bodyText1,
                ),
                const SizedBox(height: 20),

                Center(
                  child: Wrap(
                    spacing: 20,
                    alignment: WrapAlignment.center,
                    children: [
                      LinkedIconButton(
                        icon: SvgPicture.asset(
                          'assets/github.svg',
                          width: 40,
                          height: 40,
                        ),
                        url: 'https://github.com/daniel2926',
                        size: 80,
                      ),
                      LinkedIconButton(
                        icon: Image.asset(
                          'assets/icons8-linkedin-48.png',
                          width: 40,
                          height: 40,
                        ),
                        url: 'https://www.linkedin.com/in/daniel-simamora-260704dc/',
                        size: 80,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.location_on_outlined, color: Colors.grey, size: 20),
                        SizedBox(width: 6),
                        Text('Based in Jakarta, Indonesia', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(Icons.circle, size: 10, color: Colors.green),
                        SizedBox(width: 8),
                        Text('Available for new projects', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                SlideTransition(
                  position: _slideAnimation,
                  child: Center(
                    child: Container(
                      width: isNarrow ? screenWidth * 0.5 : 200,
                      height: isNarrow ? screenWidth * 0.5 : 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: appPink,
                        image: const DecorationImage(
                          image: AssetImage('assets/1.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
