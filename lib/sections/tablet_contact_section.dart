import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/section_title.dart';

class TabletContactSection extends StatelessWidget {
  const TabletContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appWhite,
      padding: const EdgeInsets.symmetric(vertical: 48),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SectionTitle(title: "Contact", titleStyle: sectionText),
            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "What’s next? Feel free to reach out to me if you're looking for a developer, have a query, or simply want to connect.",
                style: bodyText1,
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 40),

            // Email Row - Responsive
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 20,
              runSpacing: 12,
              children: [
                const Icon(Icons.email_outlined, size: 28, color: Colors.black87),
                const Text('daniel22@jiu.ac', style: headline2),
                IconButton(
                  onPressed: () {
                    Clipboard.setData(const ClipboardData(text: 'daniel22@jiu.ac'));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Email copied to clipboard!')),
                    );
                  },
                  icon: const Icon(Icons.copy, color: Colors.black54),
                  tooltip: 'Copy to clipboard',
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Phone Row - Responsive
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 20,
              runSpacing: 12,
              children: [
                const Icon(Icons.call, size: 28, color: Colors.black87),
                const Text('‪+62 857-8295-9552‬', style: headline2),
                IconButton(
                  onPressed: () {
                    Clipboard.setData(const ClipboardData(text: '‪+62 857-8295-9552‬'));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Phone number copied to clipboard!')),
                    );
                  },
                  icon: const Icon(Icons.copy, color: Colors.black54),
                  tooltip: 'Copy to clipboard',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
