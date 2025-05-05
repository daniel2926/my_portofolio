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
  late AnimationController _animationController;  // Deklarasikan AnimationController
  late Animation<Offset> _slideAnimation;  // Deklarasikan Animation<Offset>

  @override
  void initState() {
    super.initState();

    // Inisialisasi AnimationController
    _animationController = AnimationController(
      duration: const Duration(seconds: 2), // Durasi animasi
      vsync: this,
    );

    // Inisialisasi Animation<Offset> dengan gerakan dari kanan ke kiri
    _slideAnimation = Tween<Offset>(
      begin: const Offset(1.5, 0.0),  // Mulai dari kanan layar
      end: Offset.zero,  // Berhenti di posisi normal
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,  // Kurva animasi
    ));

    // Memulai animasi
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();  // Jangan lupa dispose AnimationController
    super.dispose();
  }
  Widget build(BuildContext context) {
  return Container(
    color: appWhite,
    height: 800, // Increased height for tablet
    alignment: Alignment.center,
    child: SizedBox(
      width: 864,
      height: 766,
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
          SizedBox(height: 20),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus convallis blandit pharetra. Vivamus erat magna, Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas facilisis scelerisque erat, eget molestie libero congue vitae. Pellentesque lacinia eros quam, non feugiat sapien vulputate accumsan.",
            style: bodyText1,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center aligned for tablets
            children: [
              LinkedIconButton(
                icon: SvgPicture.asset(
                  'assets/github.svg',
                  width: 40,
                  height: 40,
                ),
                url: 'https://github.com/daniel2926',
                size: 80, // Increased size for better visibility
              ),
              SizedBox(width: 16),
              LinkedIconButton(
                icon: Image.asset(
                  'assets/icons8-linkedin-48.png',
                  width: 40,
                  height: 40,
                ),
                url: 'https://www.linkedin.com/in/daniel-simamora-260704dc/',
                size: 80, // Increased size for better visibility
              ),
            ],
          ),
          SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.grey, size: 20),
                  SizedBox(width: 6),
                  Text('Based in Jakarta, Indonesia', style: TextStyle(fontSize: 16)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 10, color: Colors.green),
                  SizedBox(width: 8),
                  Text('Available for new projects', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          SlideTransition(
            position: _slideAnimation,
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: appPink,
                  image: DecorationImage(
                    image: AssetImage('assets/FotoProfile.jpeg'),
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
}

}
