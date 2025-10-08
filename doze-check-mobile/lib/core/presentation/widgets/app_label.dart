import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';

class AppLabel extends StatelessWidget {
  final String data;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  const AppLabel(
    this.data, {
    super.key,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.color,
  });

  factory AppLabel.title1(String data, {Color? color = AppColors.primary}) {
    return AppLabel(
      data,
      textAlign: TextAlign.center,
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  factory AppLabel.title2(String data, {Color? color = AppColors.primary}) {
    return AppLabel(
      data,
      textAlign: TextAlign.center,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  factory AppLabel.title3(String data, {Color? color = AppColors.primary}) {
    return AppLabel(
      data,
      textAlign: TextAlign.center,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  factory AppLabel.head(String data) {
    return AppLabel(
      data,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.secondary,
    );
  }

  factory AppLabel.body(String data) {
    return AppLabel(
      data,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.text1,
    );
  }

  factory AppLabel.risk(String data, {Color? color = AppColors.primary}) {
    return AppLabel(
      data,
      fontSize: 60,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
