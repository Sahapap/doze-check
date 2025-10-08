import 'package:doze_check/core/domain/entities/assessment.dart';
import 'package:doze_check/core/domain/entities/epworth.dart';
import 'package:doze_check/core/domain/usecases/assessment_usecase.dart';
import 'package:doze_check/core/presentation/screens/epworth/epworth_provider.dart';
import 'package:doze_check/core/presentation/widgets/app_button.dart';
import 'package:doze_check/core/presentation/widgets/app_card.dart';
import 'package:doze_check/core/presentation/widgets/app_divider.dart';
import 'package:doze_check/core/presentation/widgets/app_error.dart';
import 'package:doze_check/core/presentation/widgets/app_label.dart';
import 'package:doze_check/core/presentation/widgets/app_loading.dart';
import 'package:doze_check/shared/constant/routes.dart';
import 'package:doze_check/shared/constant/topic.dart';
import 'package:doze_check/shared/provider/localization.dart';
import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EpworthScreen extends ConsumerStatefulWidget {
  const EpworthScreen({super.key});

  @override
  ConsumerState<EpworthScreen> createState() => _EpworthScreenState();
}

class _EpworthScreenState extends ConsumerState<EpworthScreen> {
  @override
  Widget build(BuildContext context) {
    final formAsync = ref.watch(GetAssessmentFormProvider(Topic.epworth));

    return Scaffold(
      body: formAsync.when(
        loading: () => const AppLoading(),
        error: (error, stackTrace) => const AppError(),
        data: (form) => _buildFormContent(form, ref),
      ),
    );
  }

  Widget _buildFormContent(AssessmentForm form, WidgetRef ref) {
    final loc = ref.read(localizationProvider);

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
        color: AppColors.epworth,
        width: double.infinity,
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppCard.head(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppLabel.title1(loc.epworth_title),
                  const SizedBox(height: 10),
                  AppLabel.title2(loc.epworth_subtitle),
                  const SizedBox(height: 20),
                  const AppDivider(color: AppColors.epworth),
                ],
              ),
            ),
            AppCard.body(
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const _ScoreLegend(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: AppLabel.body(loc.epworth_label),
                  ),
                  Column(
                    spacing: 20,
                    children: [
                      ...form.questions.map(
                        (question) => _buildQuestionItem(question),
                      ),
                    ],
                  ),
                  AppButton(
                    text: loc.button_next,
                    onPressed: () => _onNextButtonPressed(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionItem(AssessmentQuestion item) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLabel.head(item.question),
        _AnswerToggle(id: item.id, name: item.name),
        const Padding(
          padding: EdgeInsets.only(top: 12),
          child: Divider(color: AppColors.secondary),
        ),
      ],
    );
  }

  void _onNextButtonPressed(BuildContext context) {
    if (!ref.read(epworthProvider.notifier).validate()) return;

    Navigator.of(context).pushReplacementNamed(AppRoutes.accident);
  }
}

class _ScoreLegend extends ConsumerWidget {
  const _ScoreLegend();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = ref.read(localizationProvider);

    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildRow(
            head: loc.epworth_score_0_head,
            body: loc.epworth_score_0_body,
            color: AppColors.table1,
          ),
          _buildRow(
            head: loc.epworth_score_1_head,
            body: loc.epworth_score_1_body,
            color: AppColors.table2,
          ),
          _buildRow(
            head: loc.epworth_score_2_head,
            body: loc.epworth_score_2_body,
            color: AppColors.table1,
          ),
          _buildRow(
            head: loc.epworth_score_3_head,
            body: loc.epworth_score_3_body,
            color: AppColors.table2,
          ),
        ],
      ),
    );
  }

  Widget _buildRow({
    required String head,
    required String body,
    required Color color,
  }) {
    return Container(
      color: color,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [AppLabel.head(head), AppLabel.body(body)],
      ),
    );
  }
}

class _AnswerToggle extends ConsumerWidget {
  static const choices = 4;

  final String id;
  final String name;

  const _AnswerToggle({required this.id, required this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final answer = ref.watch(
      epworthProvider.select((v) => v.getAnswerById(id)),
    );

    final notifier = ref.read(epworthProvider.notifier);

    return SizedBox(
      width: double.infinity,
      child: SegmentedButton<int>(
        style: SegmentedButton.styleFrom(
          foregroundColor: AppColors.text1,
          selectedForegroundColor: AppColors.white,
          selectedBackgroundColor: AppColors.secondary,
          side: const BorderSide(color: AppColors.border, width: 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        segments: List.generate(
          choices,
          (i) => ButtonSegment<int>(value: i, label: Text(i.toString())),
        ),
        emptySelectionAllowed: true,
        selected: answer.value != null ? {answer.value!} : {},
        showSelectedIcon: false,
        onSelectionChanged: (Set<int> selection) {
          if (selection.isNotEmpty) {
            final selectedValue = selection.first;
            notifier.setAnswer(id, name, selectedValue);
          }
        },
      ),
    );
  }
}
