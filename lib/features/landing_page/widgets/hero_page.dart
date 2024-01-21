import 'package:commondocs/common/providers/light_mode_provider.dart';
import 'package:commondocs/common/utils/theme/colors.dart';
import 'package:commondocs/common/widgets/height_spacer.dart';
import 'package:commondocs/common/widgets/rounded_button.dart';
import 'package:commondocs/common/widgets/width_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeroPage extends ConsumerWidget {
  final Function() scrollToDemoPage;
  const HeroPage({
    super.key,
    required this.scrollToDemoPage,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isLightMode = ref.watch(lightModeProvider);

    return Container(
      decoration: BoxDecoration(
        color: isLightMode ? AppColors.whiteColor : AppColors.blackColor,
      ),
      padding: const EdgeInsets.only(top: 32, left: 32, right: 32, bottom: 8),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Streamline\n Collaboration,\n',
              style: const TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Color(0xfb1976d2),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Elevate productivity',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isLightMode
                        ? AppColors.blackColor
                        : AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),
          const HeightSpacer(24),
          Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                  color:
                      isLightMode ? AppColors.grayColor : AppColors.whiteColor),
              'Unleash seamless collaboration and productivity with CommonDocs. Empower your team to work together effortlessly and achieve more.'),
          const HeightSpacer(8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedButton(
                    onPressed: () {},
                    borderColor: isLightMode
                        ? AppColors.blackColor
                        : AppColors.whiteColor,
                    buttonText: 'SIGNUP',
                    textColor: isLightMode
                        ? AppColors.whiteColor
                        : AppColors.blackColor,
                    buttonColor: isLightMode
                        ? AppColors.blackColor
                        : AppColors.whiteColor),
                const WidthSpacer(12),
                RoundedButton(
                    onPressed: scrollToDemoPage,
                    borderColor: isLightMode
                        ? AppColors.blackColor
                        : AppColors.whiteColor,
                    buttonText: 'LEARN MORE',
                    textColor: isLightMode
                        ? AppColors.grayColor
                        : AppColors.whiteColor,
                    buttonColor: isLightMode
                        ? AppColors.whiteColor
                        : AppColors.blackColor),
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
