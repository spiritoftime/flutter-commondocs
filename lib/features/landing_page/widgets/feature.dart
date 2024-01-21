import 'package:commondocs/common/providers/light_mode_provider.dart';
import 'package:commondocs/common/utils/colors.dart';
import 'package:commondocs/common/widgets/height_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Feature extends ConsumerWidget {
  final IconData featureIcon;
  final String title;
  final String description;
  const Feature(
      {super.key,
      required this.featureIcon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightMode = ref.watch(lightModeProvider);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            color: isLightMode ? AppColors.blackColor : AppColors.whiteColor,
            width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  color:
                      isLightMode ? AppColors.blackColor : AppColors.lightBlack,
                  width: 1),
              color: isLightMode ? AppColors.blackColor : AppColors.lightBlack,
            ),
            padding: const EdgeInsets.all(16),
            child: Icon(
              featureIcon,
              color: AppColors.whiteColor,
            ),
          ),
          const HeightSpacer(16),
          Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: isLightMode ? AppColors.blackColor : AppColors.whiteColor,
            ),
          ),
          const HeightSpacer(16),
          Text(
            description,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: isLightMode ? AppColors.blackColor : AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
