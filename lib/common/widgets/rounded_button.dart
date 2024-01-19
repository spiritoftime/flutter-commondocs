import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color borderColor;
  final Color buttonColor;
  final String buttonText;
  final Color textColor;
  final void Function()? onPressed;
  const RoundedButton(
      {super.key,
      required this.borderColor,
      required this.buttonText,
      required this.textColor,
      required this.buttonColor,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: borderColor,
          width: 1,
        ),
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      onPressed: () {},
      child: Text(
        buttonText,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
