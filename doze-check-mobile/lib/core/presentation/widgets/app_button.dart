import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';

// AppRoundedRectangleButton
class AppButton extends StatelessWidget {
  static const _borderRadius = 8.0;
  static const _fontSize = 16.0;

  final String text;
  final VoidCallback? onPressed;

  const AppButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: _fontSize),
        ),
      ),
    );
  }
}
