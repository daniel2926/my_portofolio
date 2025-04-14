import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1300,
      // color: Colors.yellow,// Optional: for visual distinction
      child: 
         Text(
          'AboutMe Section',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
    
    );
  }
}
