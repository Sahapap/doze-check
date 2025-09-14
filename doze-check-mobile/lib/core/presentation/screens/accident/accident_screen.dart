import 'package:doze_check/core/domain/entities/submission.dart';
import 'package:doze_check/core/domain/usecases/submission_usecase.dart';
import 'package:doze_check/core/presentation/screens/accident/accident_provider.dart';
import 'package:doze_check/core/presentation/screens/epworth/epworth_provider.dart';
import 'package:doze_check/core/presentation/screens/profile/profile_provider.dart';
import 'package:doze_check/core/presentation/screens/stopbang/stopbang_provider.dart';
import 'package:doze_check/core/presentation/widgets/app_button.dart';
import 'package:doze_check/core/presentation/widgets/app_card.dart';
import 'package:doze_check/core/presentation/widgets/app_divider.dart';
import 'package:doze_check/core/presentation/widgets/app_label.dart';
import 'package:doze_check/core/presentation/widgets/app_loading.dart';
import 'package:doze_check/core/presentation/widgets/app_radio_option.dart';
import 'package:doze_check/shared/constant/routes.dart';
import 'package:doze_check/shared/provider/localization.dart';
import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccidentScreen extends ConsumerStatefulWidget {
  const AccidentScreen({super.key});

  @override
  ConsumerState<AccidentScreen> createState() => _AccidentScreenState();
}

class _AccidentScreenState extends ConsumerState<AccidentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildFormContent(ref));
  }

  Widget _buildFormContent(WidgetRef ref) {
    final loc = ref.read(localizationProvider);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      color: AppColors.accident,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppCard.head(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppLabel.title1(loc.accident_title),
                const SizedBox(height: 20),
                const AppDivider(color: AppColors.accident),
              ],
            ),
          ),
          AppCard.body(
            child: Column(
              spacing: 20,
              children: [
                _buildQuestionItem(),
                AppButton(
                  text: loc.button_view,
                  onPressed: () => _onNextButtonPressed(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionItem() {
    return const Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _AnswerRadio(),
        Padding(
          padding: EdgeInsets.only(top: 12),
          child: Divider(color: AppColors.secondary),
        ),
      ],
    );
  }

  void _onNextButtonPressed() async {
    if (!ref.read(accidentProvider.notifier).validate()) return;
    if (!mounted) return;

    final submission = Submission(
      profile: ref.read(profileProvider),
      stopBang: ref.read(stopBangProvider),
      epworth: ref.read(epworthProvider),
      accident: ref.read(accidentProvider),
    );

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const AppLoading(),
    );

    try {
      await ref.read(createSubmissionProvider(submission).future);
      if (!mounted) return;
      Navigator.of(context, rootNavigator: true).pop(); // close dialog
      Navigator.of(context).pushReplacementNamed(AppRoutes.result);
    } catch (e) {
      if (!mounted) return;
      Navigator.of(context, rootNavigator: true).pop(); // close dialog
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString()), backgroundColor: Colors.red),
      );
    }
  }
}

class _AnswerRadio extends ConsumerWidget {
  const _AnswerRadio();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = ref.read(localizationProvider);
    final provider = ref.watch(accidentProvider);
    final notifier = ref.read(accidentProvider.notifier);

    return Column(
      spacing: 10,
      children: [
        RadioOption(
          value: true,
          groupValue: provider.answer,
          text: loc.accident_choice_1,
          onChanged: notifier.setAnswer,
        ),
        RadioOption(
          value: false,
          groupValue: provider.answer,
          text: loc.accident_choice_2,
          onChanged: notifier.setAnswer,
        ),
      ],
    );
  }
}
