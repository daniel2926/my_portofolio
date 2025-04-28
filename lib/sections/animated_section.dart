import 'package:flutter/material.dart';

class AnimatedSection extends StatelessWidget {
  final Widget child;
  final bool isVisible;
  final Animation<Offset> slideAnimation;

  const AnimatedSection({
    Key? key,
    required this.child,
    required this.isVisible,
    required this.slideAnimation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isVisible ? 1.0 : 0.0,  // Fades in or out depending on isVisible
      duration: const Duration(milliseconds: 800),  // Duration of fade in/out
      curve: Curves.easeInOut,  // Smooth easing curve for the opacity
      child: SlideTransition(
        position: slideAnimation,  // SlideTransition for smooth sliding
        child: child,  // The actual widget to display
      ),
    );
  }
}
