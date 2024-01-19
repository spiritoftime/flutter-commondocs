import 'package:flutter/material.dart';

class HeightSpacer extends StatelessWidget {
  final double h;
  const HeightSpacer(this.h, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
    );
  }
}
