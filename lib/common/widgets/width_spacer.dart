import 'package:flutter/material.dart';

class WidthSpacer extends StatelessWidget {
  final double w;
  const WidthSpacer(this.w, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
    );
  }
}
