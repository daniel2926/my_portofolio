import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedIconButton extends StatelessWidget {
  final Widget icon;
  final String url;
  final double size;

  const LinkedIconButton({
    super.key,
    required this.icon,
    required this.url,
    required this.size,
  });
  
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return ElevatedButton(
  onPressed: () async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  },
  style: ElevatedButton.styleFrom(
    shape: const CircleBorder(),
    padding: EdgeInsets.zero,
    backgroundColor: Colors.white,
    shadowColor: Colors.black.withOpacity(0.25),
    elevation: 8,
    fixedSize: const Size(48, 48),
  ),
  child: icon,
);

  }
}