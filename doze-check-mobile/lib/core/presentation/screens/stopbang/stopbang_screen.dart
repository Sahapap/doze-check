import 'package:doze_check/core/domain/entities/assessment.dart';
import 'package:doze_check/core/domain/entities/stopbang.dart';
import 'package:doze_check/core/domain/usecases/assessment_usecase.dart';
import 'package:doze_check/core/presentation/screens/stopbang/stopbang_controller.dart';
import 'package:doze_check/core/presentation/screens/stopbang/stopbang_provider.dart';
import 'package:doze_check/core/presentation/widgets/app_button.dart';
import 'package:doze_check/core/presentation/widgets/app_card.dart';
import 'package:doze_check/core/presentation/widgets/app_divider.dart';
import 'package:doze_check/core/presentation/widgets/app_error.dart';
import 'package:doze_check/core/presentation/widgets/app_label.dart';
import 'package:doze_check/core/presentation/widgets/app_loading.dart';
import 'package:doze_check/core/presentation/widgets/app_textfield.dart';
import 'package:doze_check/shared/constant/routes.dart';
import 'package:doze_check/shared/constant/topic.dart';
import 'package:doze_check/shared/helper/validator.dart';
import 'package:doze_check/shared/provider/localization.dart';
import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StopBangScreen extends ConsumerStatefulWidget {
  const StopBangScreen({super.key});

  @override
  ConsumerState<StopBangScreen> createState() => _StopBangScreenState();
}

class _StopBangScreenState extends ConsumerState<StopBangScreen> {
  late StopBangController controller;

  @override
  void initState() {
    super.initState();
    controller = StopBangController(ref);
    controller.fill(ref.read(stopBangProvider));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formAsync = ref.watch(GetAssessmentFormProvider(Topic.stopBang));

    return Scaffold(
      body: formAsync.when(
        loading: () => const AppLoading(),
        error: (error, stackTrace) => const AppError(),
        data: (form) => _buildBody(form, ref),
      ),
    );
  }

  Widget _buildBody(AssessmentForm form, WidgetRef ref) {
    final loc = ref.read(localizationProvider);

    return Form(
      key: controller.formKey,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          color: AppColors.stopbang,
          width: double.infinity,
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppCard.head(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppLabel.title1(loc.stopbang_title),
                    const SizedBox(height: 10),
                    AppLabel.title2(loc.stopbang_subtitle),
                    const SizedBox(height: 20),
                    const AppDivider(color: AppColors.stopbang),
                  ],
                ),
              ),
              AppCard.body(
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AppLabel.body(loc.stopbang_label),
                    _buildPhysicalItem(
                      controller: controller.weightController,
                      head: loc.stopbang_weight,
                      hint: loc.input_required,
                      unit: loc.unit_kilogram,
                      validator: Validator(
                        context,
                      ).withRequired().withDecimal(digit: 3).build(),
                    ),
                    Column(
                      children: [
                        _buildPhysicalItem(
                          controller: controller.heightController,
                          head: loc.stopbang_height,
                          hint: loc.input_required,
                          unit: loc.unit_centimeter,
                          validator: Validator(
                            context,
                          ).withRequired().withDecimal(digit: 3).build(),
                        ),
                        _BmiItem(),
                      ],
                    ),
                    _buildPhysicalItem(
                      controller: controller.neckCircumferenceController,
                      head: loc.stopbang_neck_circumference,
                      hint: loc.input_required,
                      unit: loc.unit_centimeter,
                      validator: Validator(
                        context,
                      ).withRequired().withDecimal(digit: 3).build(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Divider(color: AppColors.secondary),
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
      ),
    );
  }

  Widget _buildPhysicalItem({
    required TextEditingController controller,
    required String head,
    required String hint,
    required String unit,
    required String? Function(String?)? validator,
  }) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLabel.head(head),
        AppTextField(
          controller: controller,
          hint: hint,
          unit: unit,
          validator: validator,
        ),
      ],
    );
  }

  Widget _buildQuestionItem(AssessmentQuestion item) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLabel.head(item.name),
        AppLabel.body(item.question),
        _AnswerToggle(id: item.id, name: item.name),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Divider(color: AppColors.secondary),
        ),
      ],
    );
  }

  void _onNextButtonPressed(BuildContext context) {
    if (!controller.validate()) return;

    if (!ref.read(stopBangProvider.notifier).validate()) return;

    Navigator.of(context).pushReplacementNamed(AppRoutes.epworth);
  }
}

class _AnswerToggle extends ConsumerWidget {
  final String id;
  final String name;

  const _AnswerToggle({required this.id, required this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = ref.read(localizationProvider);

    final answer = ref.watch(
      stopBangProvider.select((v) => v.getAnswerById(id)),
    );

    final notifier = ref.read(stopBangProvider.notifier);

    return SizedBox(
      width: double.infinity,
      child: SegmentedButton<bool>(
        style: SegmentedButton.styleFrom(
          foregroundColor: AppColors.text1,
          selectedForegroundColor: AppColors.white,
          selectedBackgroundColor: AppColors.secondary,
          side: const BorderSide(color: AppColors.border, width: 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        segments: [
          ButtonSegment<bool>(value: true, label: Text(loc.choice_yes)),
          ButtonSegment<bool>(value: false, label: Text(loc.choice_no)),
        ],
        emptySelectionAllowed: true,
        selected: answer.value != null ? {answer.value!} : {},
        showSelectedIcon: false,
        onSelectionChanged: (Set<bool> selection) {
          if (selection.isEmpty) {
            notifier.setAnswer(id, name, null);
          } else {
            notifier.setAnswer(id, name, selection.first);
          }
        },
      ),
    );
  }
}

class _BmiItem extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = ref.read(localizationProvider);
    final bmi = ref.watch(stopBangBmiProvider);
    final bmiCategory = ref.watch(stopBangBmiCategoryProvider);

    if (bmiCategory == BmiCategory.unknown) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 9.5),
      decoration: BoxDecoration(
        color: _backgroundColor(bmiCategory),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              loc.stopbang_bmi,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
            Text(
              bmi.toStringAsFixed(0),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _backgroundColor(BmiCategory value) {
    switch (value) {
      case BmiCategory.normal:
        return AppColors.road;
      default:
        return AppColors.danger;
    }
  }
}
