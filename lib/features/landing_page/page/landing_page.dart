import 'package:commondocs/common/widgets/width_spacer.dart';
import 'package:commondocs/features/landing_page/widgets/demo_page.dart';
import 'package:commondocs/features/landing_page/widgets/features.dart';
import 'package:commondocs/features/landing_page/widgets/hero_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});
  final List<Widget> _pages = [
    const HeroPage(),
    const DemoPage(),
    const Features()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  color: Color(0xfbf5f5f5),
                ),
              ),
              titlePadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/google_docs_logo.png',
                        height: 40,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.sunny,
                      color: Color(0xfb4a4a4a),
                    ),
                    const WidthSpacer(20),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                            color: Color(0xfb0f0f0f),
                            width: 1,
                          ),
                          backgroundColor: const Color(0xfbf5f5f5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            color: Color(0xfb4a4a4a),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((builder, index) {
              return _pages[index];
            }, childCount: _pages.length),
          ),
        ],
      ),
    );
  }
}
