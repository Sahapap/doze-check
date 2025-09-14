import 'package:doze_check/core/presentation/widgets/app_label.dart';
import 'package:doze_check/gen/assets.gen.dart';
import 'package:doze_check/shared/constant/routes.dart';
import 'package:doze_check/shared/provider/localization.dart';
import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacementNamed(AppRoutes.profile);
    });
  }

  @override
  Widget build(BuildContext context) {
    final loc = ref.read(localizationProvider);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.backgroundImage.provider(),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Center(
          child: Container(
            color: AppColors.road,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Assets.images.logo.image(),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 32.5,
                  ),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [AppColors.road, AppColors.black, AppColors.road],
                      stops: [0.0, 0.5, 1.0],
                    ),
                  ),
                  width: double.infinity,
                  child: AppLabel.title2(
                    loc.splash_title,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
