import 'package:commondocs/common/providers/light_mode_provider.dart';
import 'package:commondocs/common/utils/theme/colors.dart';
import 'package:commondocs/common/widgets/width_spacer.dart';
import 'package:commondocs/features/landing_page/widgets/demo_page.dart';
import 'package:commondocs/features/landing_page/widgets/features.dart';
import 'package:commondocs/features/landing_page/widgets/hero_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingPage extends ConsumerWidget {
  final demoPageKey = GlobalKey();
  LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> scrollToDemoPage() async {
      await Scrollable.ensureVisible(
        demoPageKey.currentContext!,
        duration: const Duration(milliseconds: 500),
      );
    }

    final List<Widget> pages = [
      HeroPage(
        scrollToDemoPage: scrollToDemoPage,
      ),
      DemoPage(demoPageKey),
      Features()
    ];
    bool isLightMode = ref.watch(lightModeProvider);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  color:
                      isLightMode ? AppColors.whiteColor : AppColors.blackColor,
                ),
              ),
              titlePadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/google_docs_logo.png',
                      height: 40,
                    ),
                    Text(
                      'CommonDocs',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isLightMode
                            ? AppColors.blackColor
                            : AppColors.whiteColor,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => ref.read(lightModeProvider.notifier).state =
                          !isLightMode,
                      child: isLightMode
                          ? const Icon(
                              Icons.sunny,
                              color: AppColors.grayColor,
                            )
                          : const Icon(Icons.nightlight_round,
                              color: AppColors.whiteColor),
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
              return pages[index];
            }, childCount: pages.length),
          ),
        ],
      ),
    );
  }
}
