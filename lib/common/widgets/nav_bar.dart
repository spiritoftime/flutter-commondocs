import 'package:commondocs/common/providers/light_mode_provider.dart';
import 'package:commondocs/common/utils/colors.dart';
import 'package:commondocs/common/widgets/width_spacer.dart';
import 'package:commondocs/features/auth_page/page/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Navbar extends ConsumerWidget {
  const Navbar({
    super.key,
    required this.isLightMode,
  });

  final bool isLightMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
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
              color: isLightMode ? AppColors.blackColor : AppColors.whiteColor,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () =>
                ref.read(lightModeProvider.notifier).state = !isLightMode,
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
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
    );
  }
}
