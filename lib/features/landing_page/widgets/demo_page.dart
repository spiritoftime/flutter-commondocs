import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:commondocs/common/widgets/height_spacer.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        const Text(
          "CommonDocs was created using flutter.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xfb1976d2),
              fontWeight: FontWeight.bold,
              fontSize: 32),
        ),
        const HeightSpacer(12),
        Stack(children: [
          Image.asset(
            'assets/document-showcase.png',
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 55.0, left: 28.0),
            child: DefaultTextStyle(
              style: const TextStyle(
                  color: Color(0xfb1976d2),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
              child: AnimatedTextKit(
                repeatForever: true,
                pause: const Duration(milliseconds: 3000),
                animatedTexts: [
                  TyperAnimatedText(
                    'Hello there, how is your day going?',
                  ),
                ],
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
