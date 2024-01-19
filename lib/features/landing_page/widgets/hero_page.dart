import 'package:commondocs/common/widgets/height_spacer.dart';
import 'package:commondocs/common/widgets/width_spacer.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32, left: 32, right: 32, bottom: 8),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'Streamline\n Collaboration,\n',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Color(0xfb1976d2),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Elevate productivity',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xfb0f0f0f),
                  ),
                ),
              ],
            ),
          ),
          const HeightSpacer(24),
          const Text(
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xfb4a4a4a)),
              'Unleash seamless collaboration and productivity with CommonDocs. Empower your team to work together effortlessly and achieve more.'),
          const HeightSpacer(8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Color(0xfb0f0f0f),
                      width: 1,
                    ),
                    backgroundColor: const Color(0xfb0f0f0f),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const WidthSpacer(12),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Color(0xfb0f0f0f),
                      width: 1,
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'LEARN MORE',
                    style: TextStyle(
                      color: Color(0xfb0f0f0f),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/edit-page.png',
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}
