import 'package:animated_text_kit/animated_text_kit.dart';
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

class _HomeSectionState extends State<HomeSection> with TickerProviderStateMixin {
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
        height: 800,
        alignment: Alignment.center,
        child: SizedBox(
          width: 864, // fixed width
          height: 766,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                TyperAnimatedText("Hi, I'm Daniel Yosh Apriando 👋", 
                textStyle: headline1, 
                speed: const Duration(
                  milliseconds: 100,  
                   ),
              ),
              ],
              isRepeatingAnimation: true,  // Animasi diulang terus menerus
              pause: const Duration(milliseconds: 500)
              ),
              // Text("Hi, I'm Daniel Yosh Apriando 👋", style: headline1),
              SizedBox(height: 20),
              Text(
                  "I’m passionate about building modern and user-friendly applications with clean design and efficient code. With a strong foundation in technology and problem-solving, I enjoy turning ideas into real projects that create impact. Currently, I’m open to exciting opportunities and collaborations to bring innovative solutions to life.",
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
                        image: AssetImage(
                            'assets/1.png'), // ganti dengan path kamu
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
