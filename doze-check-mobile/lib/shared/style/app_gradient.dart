import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';

abstract final class AppGradient {
  static const main = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.gradient1, AppColors.gradient2],
  );
}

// class AppGradients extends ThemeExtension<AppGradients> {
//   final LinearGradient main;

//   const AppGradients({required this.main});

//   @override
//   AppGradients copyWith({LinearGradient? main}) =>
//       AppGradients(main: main ?? this.main);

//   @override
//   AppGradients lerp(ThemeExtension<AppGradients>? other, double t) {
//     if (other is! AppGradients) return this;
//     return AppGradients(main: LinearGradient.lerp(main, other.main, t)!);
//   }
// }
