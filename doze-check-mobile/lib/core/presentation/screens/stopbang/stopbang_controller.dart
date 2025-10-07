import 'package:doze_check/core/domain/entities/stopbang.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'stopbang_provider.dart';

class StopBangController {
  final GlobalKey<FormState> formKey;
  final TextEditingController weightController;
  final TextEditingController heightController;
  final TextEditingController neckCircumferenceController;
  final TextEditingController genderController;

  StopBangController._({
    required this.weightController,
    required this.heightController,
    required this.neckCircumferenceController,
    required this.genderController,
  }) : formKey = GlobalKey<FormState>();

  /// Initialize controllers and bind them to Riverpod state
  factory StopBangController(WidgetRef ref) {
    final weightCtrl = TextEditingController();
    final heightCtrl = TextEditingController();
    final neckCtrl = TextEditingController();
    final genderCtrl = TextEditingController();

    /// Sync controllers to provider
    weightCtrl.addListener(() {
      final value = double.tryParse(weightCtrl.text) ?? 0;
      ref.read(stopBangProvider.notifier).updateWeight(value);
    });

    heightCtrl.addListener(() {
      final value = double.tryParse(heightCtrl.text) ?? 0;
      ref.read(stopBangProvider.notifier).updateHeight(value);
    });

    neckCtrl.addListener(() {
      final value = double.tryParse(neckCtrl.text) ?? 0;
      ref.read(stopBangProvider.notifier).updateNeckCircumference(value);
    });

    genderCtrl.addListener(() {
      ref.read(stopBangProvider.notifier).updateGender(genderCtrl.text);
    });

    return StopBangController._(
      weightController: weightCtrl,
      heightController: heightCtrl,
      neckCircumferenceController: neckCtrl,
      genderController: genderCtrl,
    );
  }

  /// Pre-fill controllers from state (use when loading assessment)
  void fill(StopBangSection state) {
    weightController.text = state.weight == 0 ? '' : state.weight.toString();
    heightController.text = state.height == 0 ? '' : state.height.toString();
    neckCircumferenceController.text = state.neckCircumference == 0
        ? ''
        : state.neckCircumference.toString();
    genderController.text = state.gender;
  }

  /// Dispose controllers when widget is disposed
  void dispose() {
    weightController.dispose();
    heightController.dispose();
    neckCircumferenceController.dispose();
    genderController.dispose();
  }

  bool validate() {
    if (formKey.currentState?.validate() != true) return false;

    return true;
  }
}
