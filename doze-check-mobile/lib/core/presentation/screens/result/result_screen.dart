import 'package:doze_check/core/domain/entities/result.dart';
import 'package:doze_check/core/presentation/screens/accident/accident_provider.dart';
import 'package:doze_check/core/presentation/screens/epworth/epworth_provider.dart';
import 'package:doze_check/core/presentation/screens/stopbang/stopbang_provider.dart';
import 'package:doze_check/core/presentation/widgets/app_button.dart';
import 'package:doze_check/core/presentation/widgets/app_card.dart';
import 'package:doze_check/core/presentation/widgets/app_divider.dart';
import 'package:doze_check/core/presentation/widgets/app_label.dart';
import 'package:doze_check/gen/assets.gen.dart';
import 'package:doze_check/shared/constant/routes.dart';
import 'package:doze_check/shared/provider/localization.dart';
import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = ref.read(localizationProvider);
    final level = _evaluateRiskLevel(ref);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
        color: _color(level),
        width: double.infinity,
        child: AppCard.body(
          child: Column(
            children: [
              AppLabel.title1(loc.result_title),
              const SizedBox(height: 40),
              AppDivider(color: _color(level)),
              Flexible(child: _buildRiskImage(level)),
              const SizedBox(height: 20),
              AppLabel.title2(loc.result_label, color: AppColors.text1),
              const SizedBox(height: 8),
              _buildRiskResult(level, ref),
              const SizedBox(height: 16),
              _buildRiskDetail(level, ref),
              const SizedBox(height: 40),
              Row(
                spacing: 16,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: AppButton(
                      text: loc.button_home,
                      onPressed: () => _onPrevButtonPressed(context),
                    ),
                  ),
                  Expanded(
                    child: AppButton(
                      text: loc.button_exit,
                      onPressed: () => _onNextButtonPressed(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  RiskLevel _evaluateRiskLevel(WidgetRef ref) {
    final stopBangPositive = ref.read(stopBangPositiveProvider);
    final epworthPositive = ref.read(epworthPositiveProvider);
    final accidentPositive = ref.read(accidentPositiveProvider);

    final positive = stopBangPositive + epworthPositive + accidentPositive;

    switch (positive) {
      case 3:
        return RiskLevel.high;
      case 2:
        return RiskLevel.medium;
      case 1:
        return RiskLevel.low;
      default:
        return RiskLevel.low;
    }
  }

  Color _color(RiskLevel level) {
    switch (level) {
      case RiskLevel.high:
        return AppColors.danger;
      case RiskLevel.medium:
        return AppColors.warning;
      case RiskLevel.low:
        return AppColors.success;
    }
  }

  Widget _buildRiskImage(RiskLevel level) {
    switch (level) {
      case RiskLevel.high:
        return _RiskImage.high();
      case RiskLevel.medium:
        return _RiskImage.medium();
      case RiskLevel.low:
        return _RiskImage.low();
    }
  }

  Widget _buildRiskResult(RiskLevel level, WidgetRef ref) {
    final loc = ref.read(localizationProvider);

    switch (level) {
      case RiskLevel.high:
        return AppLabel.risk(loc.result_risk_high, color: AppColors.danger);
      case RiskLevel.medium:
        return AppLabel.risk(loc.result_risk_medium, color: AppColors.warning);
      case RiskLevel.low:
        return AppLabel.risk(loc.result_risk_low, color: AppColors.success);
    }
  }

  Widget _buildRiskDetail(RiskLevel level, WidgetRef ref) {
    final loc = ref.read(localizationProvider);

    switch (level) {
      case RiskLevel.high:
        return AppLabel.title3(
          loc.result_risk_high_detail,
          color: AppColors.text1,
        );
      case RiskLevel.medium:
        return AppLabel.title3(
          loc.result_risk_medium_detail,
          color: AppColors.text1,
        );
      case RiskLevel.low:
        return AppLabel.title3(
          loc.result_risk_low_detail,
          color: AppColors.text1,
        );
    }
  }

  void _onPrevButtonPressed(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(AppRoutes.profile);
  }

  void _onNextButtonPressed(BuildContext context) {
    SystemNavigator.pop();
  }
}

class _RiskImage extends StatelessWidget {
  final String signPath;
  final String iconPath;

  const _RiskImage({required this.signPath, required this.iconPath});

  factory _RiskImage.high() {
    return _RiskImage(
      iconPath: Assets.images.highRiskResult.path,
      signPath: Assets.images.highRiskSign.path,
    );
  }

  factory _RiskImage.medium() {
    return _RiskImage(
      iconPath: Assets.images.mediumRiskResult.path,
      signPath: Assets.images.mediumRiskSign.path,
    );
  }

  factory _RiskImage.low() {
    return _RiskImage(
      iconPath: Assets.images.lowRiskResult.path,
      signPath: Assets.images.lowRiskSign.path,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.5,
      child: Stack(
        children: [
          Positioned(top: 20, right: 0, child: Image.asset(signPath)),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset(iconPath),
            ),
          ),
        ],
      ),
    );
  }
}
