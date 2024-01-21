import 'package:commondocs/common/providers/light_mode_provider.dart';
import 'package:commondocs/common/utils/colors.dart';
import 'package:commondocs/common/widgets/height_spacer.dart';
import 'package:commondocs/common/widgets/nav_bar.dart';
import 'package:commondocs/features/auth_page/widgets/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isLightMode = ref.watch(lightModeProvider);
    return Scaffold(
      backgroundColor:
          isLightMode ? AppColors.whiteColor : AppColors.blackColor,
      appBar: AppBar(
        backgroundColor:
            isLightMode ? AppColors.whiteColor : AppColors.blackColor,
        // leadingWidth: 30,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                'assets/google_docs_logo.png',
                height: 40,
              ),
            ),
            Text(
              'CommonDocs',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color:
                    isLightMode ? AppColors.blackColor : AppColors.whiteColor,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 32.0),
              child: GestureDetector(
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
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.pinkColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.lock,
                    size: 30,
                    color: isLightMode
                        ? AppColors.whiteColor
                        : AppColors.blackColor),
              ),
            ),
            const HeightSpacer(10),
            Text(
              'Sign Up',
              style: TextStyle(
                  color:
                      isLightMode ? AppColors.blackColor : AppColors.whiteColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            const AuthForm()
          ],
        ),
      ),
    );
  }
}
