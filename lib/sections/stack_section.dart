import 'package:flutter/material.dart';

class StackSection extends StatelessWidget {
  const StackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1650,
      color: Colors.brown, // Optional: for visual distinction
      child: const Center(
        child: Text(
          'Stack Section',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
