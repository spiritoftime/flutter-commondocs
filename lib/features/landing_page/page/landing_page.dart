import 'package:commondocs/common/providers/light_mode_provider.dart';
import 'package:commondocs/common/utils/colors.dart';
import 'package:commondocs/common/widgets/nav_bar.dart';
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
              title: Navbar(isLightMode: isLightMode),
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
