import 'package:commondocs/common/widgets/height_spacer.dart';
import 'package:flutter/material.dart';

class Feature extends StatelessWidget {
  final Icon featureIcon;
  final String title;
  final String description;
  const Feature(
      {super.key,
      required this.featureIcon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xfb1f1f1f), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: const Color(0xfb1f1f1f), width: 1),
              color: const Color(0xfb0f0f0f),
            ),
            padding: const EdgeInsets.all(16),
            child: featureIcon,
          ),
          const HeightSpacer(16),
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xfb0f0f0f),
            ),
          ),
          const HeightSpacer(16),
          Text(
            description,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
