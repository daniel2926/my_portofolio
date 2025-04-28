import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/app_fonts.dart';
import 'package:my_portfolio/widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appWhite,
      height: 448,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 48), // ➡ Tambahin sedikit jarak atas

            // Styled Title: Contact
            SectionTitle(title: "Contact", titleStyle: sectionText),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "What’s next? Feel free to reach out to me if you're looking for a developer, have a query, or simply want to connect.",
                style: bodyText1,
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 32),

            // Email Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.email_outlined,
                    size: 28, color: Colors.black87),
                const SizedBox(width: 20),
                const Text(
                  'daniel22@jiu.ac', // Ganti dengan email kamu
                  style: headline2,
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    Clipboard.setData(
                      const ClipboardData(text: 'daniel22@jiu.ac'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Email copied to clipboard!')),
                    );
                  },
                  icon: const Icon(Icons.copy, color: Colors.black54),
                  tooltip: 'Copy to clipboard',
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Phone Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.call, size: 28, color: Colors.black87),
                const SizedBox(width: 20),
                const Text(
                  '‪+62 857-8295-9552‬', // Ganti dengan nomor kamu
                  style: headline2,
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    Clipboard.setData(
                      const ClipboardData(text: '‪+62 857-8295-9552‬'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Phone number copied to clipboard!')),
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
