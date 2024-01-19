import 'package:commondocs/common/widgets/height_spacer.dart';
import 'package:commondocs/common/widgets/width_spacer.dart';
import 'package:flutter/material.dart';

class Feature extends StatelessWidget {
  const Feature({super.key});

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
            child: const Icon(
              Icons.drag_indicator_outlined,
              color: Colors.white,
            ),
          ),
          const HeightSpacer(16),
          const Text(
            'Simplify.Organize.Collaborate',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xfb0f0f0f),
            ),
          ),
          const HeightSpacer(16),
          const Text(
            'Effortlessly categorize your files using nested folders, allowing for easy management and quick access. Simplify your workflow by dragging and dropping documents with our intuitive interface.',
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}
