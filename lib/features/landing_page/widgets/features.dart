import 'package:commondocs/common/widgets/height_spacer.dart';
import 'package:commondocs/features/landing_page/widgets/feature.dart';
import 'package:commondocs/common/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {
      'icon': const Icon(
        Icons.drag_indicator_outlined,
        color: AppColors.whiteColor,
      ),
      'title': 'Simplify.Organize.Collaborate',
      'description':
          'Effortlessly categorize your files using nested folders, allowing for easy management and quick access. Simplify your workflow by dragging and dropping documents with our intuitive interface.'
    },
    {
      'icon': const Icon(
        Icons.share,
        color: AppColors.whiteColor,
      ),
      'title': 'Efficient Document Sharing',
      'description':
          'Share documents effortlessly. CommonDocs enables easy sharing with specific individuals or groups, granting control over access permissions.'
    },
    {
      'icon': const Icon(
        Icons.security,
        color: AppColors.whiteColor,
      ),
      'title': 'Enhanced Security Features',
      'description':
          'Rest assured knowing your documents are safe. CommonDocs employs robust security measures, including refresh tokens and access controls.'
    },
  ];
  Features({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: features.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Feature(
                featureIcon: features[index]['icon'],
                title: features[index]['title'],
                description: features[index]['description'],
              ),
              const HeightSpacer(16)
              // Adjust the height according to your needs
            ],
          );
        },
      ),
    );
  }
}
